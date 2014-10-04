class EventVolunteer < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  attr_accessible :event_id, :showed_up, :user_id
end
