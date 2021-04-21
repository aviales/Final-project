class CreateWorkAreas < ActiveRecord::Migration[6.1]
  def change
    create_table :work_areas do |t|
      t.string :name
      t.references :check_list, foreign_key: true
      t.timestamps
    end
  end
end
