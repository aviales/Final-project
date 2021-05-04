class CreateCheckListItems < ActiveRecord::Migration[6.1]
  def change
    create_table :check_list_items do |t|
      t.boolean :value, null: false, default: false
      t.string :text, null: false
      t.references :check_list, foreign_key: true
      t.timestamps
    end
  end
end
