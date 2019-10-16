class AddTicketIdToPurchases < ActiveRecord::Migration[5.2]
  def change
    add_reference :purchases, :ticket, foreign_key: true
  end
end
