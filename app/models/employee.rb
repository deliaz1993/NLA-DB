class Employee < ActiveRecord::Base
  has_many :novanet_locations

   def name
     "#{first_name} #{last_name}"
   end
end
