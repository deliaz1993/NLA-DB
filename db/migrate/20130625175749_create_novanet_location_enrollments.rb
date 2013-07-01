class CreateNovanetLocationEnrollments < ActiveRecord::Migration
  def change
    create_table :novanet_location_enrollments do |t|
      t.references :student, index: true
      t.references :NovanetLocation, index: true

      t.timestamps
    end
  end
end
