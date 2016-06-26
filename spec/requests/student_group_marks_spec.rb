require 'rails_helper'

RSpec.describe "StudentGroupMarks", :type => :request do
  describe "GET /student_group_marks" do
    it "works! (now write some real specs)" do
      get student_group_marks_path
      expect(response).to have_http_status(200)
    end
  end
end
