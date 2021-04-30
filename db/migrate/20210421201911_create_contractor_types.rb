class CreateContractorTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :contractor_types do |t|
      t.string :name, null: false , unique: true
      t.references :contractor, foreign_key: true
      t.timestamps
    end
  end
end
