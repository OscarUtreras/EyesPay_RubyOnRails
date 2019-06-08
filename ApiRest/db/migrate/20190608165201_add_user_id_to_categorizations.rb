class AddUserIdToCategorizations < ActiveRecord::Migration[5.2]
  def change
    add_reference :categorizations, :user, foreign_key: true
  end
end
