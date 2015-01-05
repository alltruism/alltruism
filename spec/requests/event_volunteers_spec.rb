require 'rails_helper'

RSpec.describe "EventVolunteers", :type => :request do
  describe "GET /event_volunteers" do
    it "works! (now write some real specs)" do
      get event_volunteers_path
      expect(response).to have_http_status(200)
    end
  end
end
