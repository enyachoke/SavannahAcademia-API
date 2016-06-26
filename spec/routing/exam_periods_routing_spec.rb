require "rails_helper"

RSpec.describe ExamPeriodsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/exam_periods").to route_to("exam_periods#index")
    end

    it "routes to #new" do
      expect(:get => "/exam_periods/new").to route_to("exam_periods#new")
    end

    it "routes to #show" do
      expect(:get => "/exam_periods/1").to route_to("exam_periods#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/exam_periods/1/edit").to route_to("exam_periods#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/exam_periods").to route_to("exam_periods#create")
    end

    it "routes to #update" do
      expect(:put => "/exam_periods/1").to route_to("exam_periods#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/exam_periods/1").to route_to("exam_periods#destroy", :id => "1")
    end

  end
end
