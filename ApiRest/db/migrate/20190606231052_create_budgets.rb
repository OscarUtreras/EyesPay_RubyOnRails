class CreateBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :budgets do |t|
      t.integer :category
      t.integer :limit
      t.integer :total
      t.timestamps
    end
  end
end
