require 'rails_helper'

RSpec.describe "StudentGroups", :type => :request do
  describe "GET /student_groups" do
    it "works! (now write some real specs)" do
      get student_groups_path
      expect(response).to have_http_status(200)
    end
  end
end
