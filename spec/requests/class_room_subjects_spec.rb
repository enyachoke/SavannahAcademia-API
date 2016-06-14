require 'rails_helper'

RSpec.describe "ClassRoomSubjects", :type => :request do
  describe "GET /class_room_subjects" do
    it "works! (now write some real specs)" do
      get class_room_subjects_path
      expect(response).to have_http_status(200)
    end
  end
end
