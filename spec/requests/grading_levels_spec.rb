require 'rails_helper'

RSpec.describe "GradingLevels", :type => :request do
  describe "GET /grading_levels" do
    it "works! (now write some real specs)" do
      get grading_levels_path
      expect(response).to have_http_status(200)
    end
  end
end
