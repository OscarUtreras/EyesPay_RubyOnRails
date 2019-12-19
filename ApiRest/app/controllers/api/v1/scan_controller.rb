require 'base64'
require 'rtesseract'

module Api
    module V1
        class ScanController < ApplicationController
            def index
                image_data = Base64.decode64(params[:image])
                file_name = "somefilename.#{params[:extension]}"
                new_file=File.new(file_name, 'wb')
                new_file.write(image_data)

                image = RTesseract.new(file_name, lang: 'spa')
                products = find_products(image.to_s)
                File.delete(file_name)
                render :json => products
            end
        end
    end
end

def find_products(data)
    if data != nil
        products = []
        key_words1 = ["CENCOSUD", "RETAIL", "S.A."]
        key_words2 = ["DEBITO", "SUB TOTAL", "TOTAL", "VUELTO"]
        lines = data.split("\n")
        cont = 0
        skip = 0
        products_end = true
        lines.each do |line|
            if cont < 1
                key_words1.each do |word|
                    index = line.index(word)
                    if index != nil
                        cont = cont + 1
                    end
                end
            elsif products_end == true
                if skip > 4
                    key_words2.each do |word|
                        index = line.index(word)
                        if index != nil
                            products_end = false
                        end
                    end
                    if products_end == true
                        aux = get_products(line)
                        if  aux != nil
                            products.push(aux)
                        end
                    end
                else
                    skip = skip + 1
                end
            end
        end
    end
    products
end

def get_products(line)
    line = line.split(" ")
    line.delete_at(0)
    price = line.last
    line.delete_at(line.length - 1)
    name = ""
    line.each do |word|
        name = name + " #{word}"
    end
    product = Product.find_by(name: name)
    if product != nil
        product.price = price
    end
    product
end