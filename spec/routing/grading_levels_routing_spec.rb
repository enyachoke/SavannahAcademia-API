require "rails_helper"

RSpec.describe GradingLevelsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/grading_levels").to route_to("grading_levels#index")
    end

    it "routes to #new" do
      expect(:get => "/grading_levels/new").to route_to("grading_levels#new")
    end

    it "routes to #show" do
      expect(:get => "/grading_levels/1").to route_to("grading_levels#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/grading_levels/1/edit").to route_to("grading_levels#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/grading_levels").to route_to("grading_levels#create")
    end

    it "routes to #update" do
      expect(:put => "/grading_levels/1").to route_to("grading_levels#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/grading_levels/1").to route_to("grading_levels#destroy", :id => "1")
    end

  end
end
