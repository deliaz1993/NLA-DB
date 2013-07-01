class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.references :school, index: true
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :gender
      t.date :DOB
      t.string :race
      t.string :phone
      t.string :email
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zip_code

      t.timestamps
    end
  end
end
