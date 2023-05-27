require 'rails_helper'

RSpec.describe "Tweets", type: :request do
  describe "POST /tweet" do
    it "redirect to root path" do
      post "/tweet"
      expect(response).to redirect_to(root_path)

    end
  end
end
