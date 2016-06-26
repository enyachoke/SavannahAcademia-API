require "rails_helper"

RSpec.describe SubjectMarksController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/subject_marks").to route_to("subject_marks#index")
    end

    it "routes to #new" do
      expect(:get => "/subject_marks/new").to route_to("subject_marks#new")
    end

    it "routes to #show" do
      expect(:get => "/subject_marks/1").to route_to("subject_marks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/subject_marks/1/edit").to route_to("subject_marks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/subject_marks").to route_to("subject_marks#create")
    end

    it "routes to #update" do
      expect(:put => "/subject_marks/1").to route_to("subject_marks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/subject_marks/1").to route_to("subject_marks#destroy", :id => "1")
    end

  end
end
