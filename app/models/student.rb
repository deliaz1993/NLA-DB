class Student < ActiveRecord::Base
  belongs_to :school
  has_one :NovanetLocationEnrollments
  

   def name
     "#{last_name}, #{first_name} "
   end
end