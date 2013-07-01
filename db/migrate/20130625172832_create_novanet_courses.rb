class CreateNovanetCourses < ActiveRecord::Migration
  def change
    create_table :novanet_courses do |t|
      t.string :name

      t.timestamps
    end
  end
end
