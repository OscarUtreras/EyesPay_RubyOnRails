class AddProductIdToCategorizations < ActiveRecord::Migration[5.2]
  def change
    add_reference :categorizations, :product, foreign_key: true
  end
end
