class AddBudgetIdToTickets < ActiveRecord::Migration[5.2]
  def change
    add_reference :tickets, :budget, foreign_key: true
  end
end
