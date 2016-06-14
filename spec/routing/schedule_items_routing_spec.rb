require "rails_helper"

RSpec.describe ScheduleItemsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/schedule_items").to route_to("schedule_items#index")
    end

    it "routes to #new" do
      expect(:get => "/schedule_items/new").to route_to("schedule_items#new")
    end

    it "routes to #show" do
      expect(:get => "/schedule_items/1").to route_to("schedule_items#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/schedule_items/1/edit").to route_to("schedule_items#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/schedule_items").to route_to("schedule_items#create")
    end

    it "routes to #update" do
      expect(:put => "/schedule_items/1").to route_to("schedule_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/schedule_items/1").to route_to("schedule_items#destroy", :id => "1")
    end

  end
end
