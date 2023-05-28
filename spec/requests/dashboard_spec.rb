require 'rails_helper'

RSpec.describe "Homes", type: :request do
  describe "GET /index" do
    context "when user is not logged in" do
        it "is successfull" do
        #get "/home/index"
        get root_path
        expect(response).to have_http_status(:success)
        end
    end

    context "when user is logged in" do
        it "redirects to dashboard path" do
            user = create(:user)
            sign_in user
            get root_path
            expect(response).to redirect_to(dashboard_path)

        end
    end
  end
  

end
