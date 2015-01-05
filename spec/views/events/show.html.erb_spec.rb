require 'rails_helper'

RSpec.describe "events/show", :type => :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :name => "Event",
      :organization_id => 1,
      :description => "Event",
      :location => "Location",
      :start_time => Time.now,
      :end_time => Time.now
    ))
  end

  it "renders attributes in <p>" do
    render
  end
end
