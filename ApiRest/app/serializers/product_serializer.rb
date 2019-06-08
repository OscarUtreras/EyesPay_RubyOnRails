class ProductSerializer < ActiveModel::Serializer
    attributes :id, :name, :categorized
    belongs_to :category

    class CategorySerializer < ActiveModel::Serializer
        attributes :id, :name
    end
end