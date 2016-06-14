require 'rails_helper'

RSpec.describe "TimeTableItems", :type => :request do
  describe "GET /time_table_items" do
    it "works! (now write some real specs)" do
      get time_table_items_path
      expect(response).to have_http_status(200)
    end
  end
end
