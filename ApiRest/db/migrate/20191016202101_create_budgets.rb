class CreateBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :budgets do |t|
      t.integer :max
      t.integer :current
      t.integer :id_category

      t.timestamps
    end
  end
end
