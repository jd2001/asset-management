class AddHostTypeReferenceToApplications < ActiveRecord::Migration[5.2]
  def change
    change_table :applications do |t|
      t.references :host_type, foreign_key: true
    end
  end
end
