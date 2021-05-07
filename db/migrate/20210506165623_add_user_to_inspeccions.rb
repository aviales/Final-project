class AddUserToInspeccions < ActiveRecord::Migration[6.1]
  def change
    add_reference :inspeccions, :user, null: false, foreign_key: true
  end
end
