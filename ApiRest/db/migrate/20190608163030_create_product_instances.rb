class CreateProductInstances < ActiveRecord::Migration[5.2]
  def change
    create_table :product_instances do |t|
      t.integer :price
      t.integer :product
      t.timestamps
    end
  end
end
