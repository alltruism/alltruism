require 'rails_helper'

RSpec.describe "event_volunteers/show", :type => :view do
  before(:each) do
    @event_volunteer = assign(:event_volunteer, EventVolunteer.create!(
      :event_id => 1,
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
  end
end
