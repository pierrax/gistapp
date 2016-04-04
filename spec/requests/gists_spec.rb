require 'rails_helper'

RSpec.describe "Gists", :type => :request do
  describe "GET /gists" do
    it "works! (now write some real specs)" do
      get gists_path
      expect(response.status).to be(200)
    end
  end
end
