class AddTiketIdToProductInstances < ActiveRecord::Migration[5.2]
  def change
    add_reference :product_instances, :ticket, foreign_key: true
  end
end
