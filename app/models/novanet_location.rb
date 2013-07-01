class NovanetLocation < ActiveRecord::Base
  belongs_to :employee

  has_many :NovanetLocationEnrollments
  has_many :students, :through => :NovanetLocationEnrollments

  scope :by_location, lambda {|location_id| where("location_id = ?", location_id)}
  
end
