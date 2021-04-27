class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.date :start_date
      t.date :finish_date
      t.integer :periodicity, default: 0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
