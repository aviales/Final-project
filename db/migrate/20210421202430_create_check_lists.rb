class CreateCheckLists < ActiveRecord::Migration[6.1]
  def change
    create_table :check_lists do |t|
      t.integer :document_version, null: false 
      t.string :hazard_type, null: false 
      t.references :contractor, foreign_key: true
      t.references :inspeccion, foreign_key: true
      t.timestamps
    end
  end
end
