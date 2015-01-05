require 'rails_helper'

RSpec.describe "event_volunteers/new", :type => :view do
  before(:each) do
    assign(:event_volunteer, EventVolunteer.new())
  end

  it "renders new event_volunteer form" do
    render

    assert_select "form[action=?][method=?]", event_volunteers_path, "post" do
    end
  end
end
