require 'rails_helper'

RSpec.describe "event_volunteers/index", :type => :view do
  before(:each) do
    assign(:event_volunteers, [
      EventVolunteer.create!(
        :event_id => 1,
        :user_id => 1
      ),
      EventVolunteer.create!(
        :event_id => 1,
        :user_id => 2
      )
    ])
  end

  it "renders a list of event_volunteers" do
    render
  end
end
