class CreateTodoLists < ActiveRecord::Migration[5.1]
  def change
    create_table :todo_lists do |t|
      t.string :title
      t.text :description
      t.references :check_list, foreign_key: true
      t.timestamps
    end
  end
end
