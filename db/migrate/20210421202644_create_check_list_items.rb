class CreateCheckListItems < ActiveRecord::Migration[6.1]
  def change
    create_table :check_list_items do |t|
      t.boolean :value
      t.string :text
      t.references :check_list, foreign_key: true
      t.timestamps
    end
  end
end
