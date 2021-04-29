class CreateCheckLists < ActiveRecord::Migration[6.1]
  def change
    create_table :check_lists do |t|
      t.date :date
      t.string :hazard_type
      t.references :contractor, foreign_key: true
      t.references :inspeccion, foreign_key: true
      t.timestamps
    end
  end
end
