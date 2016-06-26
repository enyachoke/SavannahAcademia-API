require "rails_helper"

RSpec.describe StudentGroupMarksController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/student_group_marks").to route_to("student_group_marks#index")
    end

    it "routes to #new" do
      expect(:get => "/student_group_marks/new").to route_to("student_group_marks#new")
    end

    it "routes to #show" do
      expect(:get => "/student_group_marks/1").to route_to("student_group_marks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/student_group_marks/1/edit").to route_to("student_group_marks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/student_group_marks").to route_to("student_group_marks#create")
    end

    it "routes to #update" do
      expect(:put => "/student_group_marks/1").to route_to("student_group_marks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/student_group_marks/1").to route_to("student_group_marks#destroy", :id => "1")
    end

  end
end
