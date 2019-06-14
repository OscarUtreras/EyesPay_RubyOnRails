class BudgetSerializer < ActiveModel::Serializer
    attributes :id, :category, :total, :limit
end