require 'rails_helper'

RSpec.describe "events/index", :type => :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :name => "Event1",
        :organization_id => 1,
        :location => "Location1",
        :description => "Event1",
        :start_time => Time.now,
        :end_time => Time.now
      ),
      Event.create!(
        :name => "Event2",
        :organization_id => 1,
        :location => "Location2",
        :description => "Event2",
        :start_time => Time.now,
        :end_time => Time.now
      )
    ])
  end

  it "renders a list of events" do
    render
  end
end
