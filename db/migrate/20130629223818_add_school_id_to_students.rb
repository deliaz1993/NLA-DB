class AddSchoolIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :school_id, :int
  end
end
