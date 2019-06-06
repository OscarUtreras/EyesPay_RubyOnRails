class Budget < ApplicationRecord
    has_many :tickets
    belongs_to :user
end
