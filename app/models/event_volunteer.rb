class EventVolunteer < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  attr_accessible :event_id, :showed_up, :user_id
  validates_uniqueness_of :event_id, :scope => :user_id
end
