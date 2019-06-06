class Ticket < ApplicationRecord
    belongs_to :budget
    has_many :has_products
end
