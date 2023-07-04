require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:tweets).dependent(:destroy) }
  it { should validate_uniqueness_of(:username).case_insensitive.allow_nil }

  describe "#set_display_name" do
    context "when display_name is set" do
      it "does not change the display name" do
        user = build(:user, username: "testuser", display_name: "Test User")

        user.save

        expect(user.reload.display_name).to eq("Test User")
     
      end

    end

    context "when display_name is not set" do
      it "changes the display name" do
        user = build(:user, username: "testuser", display_name: nil)
        user.save
        expect(user.reload.display_name).to eq("Testuser")
      end
    end

  end
end
