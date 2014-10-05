class Event < ActiveRecord::Base
  has_many :event_volunteers
  has_many :users, :through => :event_volunteers
  attr_accessible :description, :end_time, :location, :name, :organization_id, :start_time
end
