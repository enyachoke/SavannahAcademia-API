require 'rails_helper'

RSpec.describe "ClassTimings", :type => :request do
  describe "GET /class_timings" do
    it "works! (now write some real specs)" do
      get class_timings_path
      expect(response).to have_http_status(200)
    end
  end
end
