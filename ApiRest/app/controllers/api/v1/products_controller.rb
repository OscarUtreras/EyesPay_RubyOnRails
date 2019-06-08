module Api
    module V1
        class ProductsController < ApplicationController
            def index
                @products = Product.order('created_at DESC')
                render :json => @products
            end
        end
    end
end