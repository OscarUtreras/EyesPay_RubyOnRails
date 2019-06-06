class Product < ApplicationRecord
    belongs_to :category
    has_many :has_products
    has_many :categorizations
end
