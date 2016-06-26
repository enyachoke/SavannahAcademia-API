require 'rails_helper'

RSpec.describe "ExamPeriods", :type => :request do
  describe "GET /exam_periods" do
    it "works! (now write some real specs)" do
      get exam_periods_path
      expect(response).to have_http_status(200)
    end
  end
end
