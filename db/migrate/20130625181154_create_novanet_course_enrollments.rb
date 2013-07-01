class CreateNovanetCourseEnrollments < ActiveRecord::Migration
  def change
    create_table :novanet_course_enrollments do |t|
      t.references :student, index: true
      t.references :NovanetCourse, index: true

      t.timestamps
    end
  end
end
