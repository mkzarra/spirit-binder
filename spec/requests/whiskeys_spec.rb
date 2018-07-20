require 'rails_helper'

RSpec.describe "Whiskeys", type: :request do
  describe "GET /whiskeys" do
    it "works! (now write some real specs)" do
      get whiskeys_path
      expect(response).to have_http_status(200)
    end
  end
end
