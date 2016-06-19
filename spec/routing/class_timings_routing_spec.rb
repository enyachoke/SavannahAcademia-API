require "rails_helper"

RSpec.describe ClassTimingsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/class_timings").to route_to("class_timings#index")
    end

    it "routes to #new" do
      expect(:get => "/class_timings/new").to route_to("class_timings#new")
    end

    it "routes to #show" do
      expect(:get => "/class_timings/1").to route_to("class_timings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/class_timings/1/edit").to route_to("class_timings#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/class_timings").to route_to("class_timings#create")
    end

    it "routes to #update" do
      expect(:put => "/class_timings/1").to route_to("class_timings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/class_timings/1").to route_to("class_timings#destroy", :id => "1")
    end

  end
end
