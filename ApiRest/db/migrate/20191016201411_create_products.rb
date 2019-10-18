class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.boolean :active
      t.string :name
      t.text :description
      t.integer :positive
      t.integer :negative

      t.timestamps
    end
  end
end