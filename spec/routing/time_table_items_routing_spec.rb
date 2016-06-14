require "rails_helper"

RSpec.describe TimeTableItemsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/time_table_items").to route_to("time_table_items#index")
    end

    it "routes to #new" do
      expect(:get => "/time_table_items/new").to route_to("time_table_items#new")
    end

    it "routes to #show" do
      expect(:get => "/time_table_items/1").to route_to("time_table_items#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/time_table_items/1/edit").to route_to("time_table_items#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/time_table_items").to route_to("time_table_items#create")
    end

    it "routes to #update" do
      expect(:put => "/time_table_items/1").to route_to("time_table_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/time_table_items/1").to route_to("time_table_items#destroy", :id => "1")
    end

  end
end
