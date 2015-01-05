require "rails_helper"

RSpec.describe EventVolunteersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/event_volunteers").to route_to("event_volunteers#index")
    end

    it "routes to #new" do
      expect(:get => "/event_volunteers/new").to route_to("event_volunteers#new")
    end

    it "routes to #show" do
      expect(:get => "/event_volunteers/1").to route_to("event_volunteers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/event_volunteers/1/edit").to route_to("event_volunteers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/event_volunteers").to route_to("event_volunteers#create")
    end

    it "routes to #update" do
      expect(:put => "/event_volunteers/1").to route_to("event_volunteers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/event_volunteers/1").to route_to("event_volunteers#destroy", :id => "1")
    end

  end
end
