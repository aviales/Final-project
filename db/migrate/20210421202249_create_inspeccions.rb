class CreateInspeccions < ActiveRecord::Migration[6.1]
  def change
    create_table :inspeccions do |t|
      t.date :periodicity
      t.references :contractor, foreign_key: true
      t.references :project, foreign_key: true
      t.timestamps
    end
  end
end
