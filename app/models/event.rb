class Event < ActiveRecord::Base
  has_many :event_volunteers
  has_many :users, :through => :event_volunteers
  validates_uniqueness_of :event, :scope => :user
  attr_accessible :description, :end_time, :location, :name, :organization_id, :start_time
end
