class BudgetSerializer < ActiveModel::Serializer
    attributes :id, :id_category, :max, :current
end