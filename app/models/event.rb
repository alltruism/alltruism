class Event < ActiveRecord::Base
  belongs_to :organization
  has_many :event_volunteers
  has_many :users, :through => :event_volunteers
  attr_accessible :description, :end_time, :location, :name, :organization_id, :start_time
  validates_presence_of :name, :description, :location, :start_time
end
