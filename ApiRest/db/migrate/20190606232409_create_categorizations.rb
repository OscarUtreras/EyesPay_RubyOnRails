class CreateCategorizations < ActiveRecord::Migration[5.2]
  def change
    create_table :categorizations do |t|
      t.integer :category
      t.integer :user
      t.timestamps
    end
  end
end
