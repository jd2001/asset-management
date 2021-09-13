class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.string :asset_code, null: false
      t.numeric :cost
      t.string :cost_type
      t.string :name, null: false
      t.references :info_type, foreign_key: true, null: false

      t.timestamps
    end
  end
end
