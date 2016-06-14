require "rails_helper"

RSpec.describe ClassRoomSubjectsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/class_room_subjects").to route_to("class_room_subjects#index")
    end

    it "routes to #new" do
      expect(:get => "/class_room_subjects/new").to route_to("class_room_subjects#new")
    end

    it "routes to #show" do
      expect(:get => "/class_room_subjects/1").to route_to("class_room_subjects#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/class_room_subjects/1/edit").to route_to("class_room_subjects#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/class_room_subjects").to route_to("class_room_subjects#create")
    end

    it "routes to #update" do
      expect(:put => "/class_room_subjects/1").to route_to("class_room_subjects#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/class_room_subjects/1").to route_to("class_room_subjects#destroy", :id => "1")
    end

  end
end
