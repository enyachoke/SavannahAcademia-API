require 'rails_helper'

RSpec.describe "ScheduleItems", :type => :request do
  describe "GET /schedule_items" do
    it "works! (now write some real specs)" do
      get schedule_items_path
      expect(response).to have_http_status(200)
    end
  end
end
