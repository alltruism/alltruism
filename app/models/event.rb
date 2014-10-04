class Event < ActiveRecord::Base
  attr_accessible :description, :end_time, :location, :name, :organization_id, :start_time
end
