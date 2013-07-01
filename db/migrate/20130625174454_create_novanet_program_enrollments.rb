class CreateNovanetProgramEnrollments < ActiveRecord::Migration
  def change
    create_table :novanet_program_enrollments do |t|
      t.references :student, index: true
      t.references :novanet_location, index: true

      t.timestamps
    end
  end
end
