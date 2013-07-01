class CreateNovanetLocations < ActiveRecord::Migration
  def change
    create_table :novanet_locations do |t|
      t.string :name
      t.string :address
      t.references :employee, index: true

      t.timestamps
    end
  end
end
