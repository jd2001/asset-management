class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :first_name, null: false
      t.string :surname
      t.string :email
      t.string :phone_number
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
