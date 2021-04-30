class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name, null: false , unique: true
      t.date :start_date, null: false
      t.date :finish_date, null: false
      t.integer :periodicity, default: 0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
