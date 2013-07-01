class NovanetCourseEnrollment < ActiveRecord::Base
  belongs_to :student
  belongs_to :NovanetCourse
end
