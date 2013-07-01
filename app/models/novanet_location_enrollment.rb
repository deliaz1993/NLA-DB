class NovanetLocationEnrollment < ActiveRecord::Base
  belongs_to :NovanetLocation
  has_one :student

  scope :by_location, lambda {|location_id| where("novanet_location_id = ?", location_id)}
  
end
