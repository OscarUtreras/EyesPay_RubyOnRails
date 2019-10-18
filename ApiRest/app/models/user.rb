class User < ApplicationRecord
    has_many :budgets
    has_many :tickets

end
