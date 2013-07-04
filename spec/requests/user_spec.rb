require 'spec_helper'

describe "Users#" do
  context "account authentication" do
    it "can login the user with correct credentials" do
      login
      expect(page).to have_content("Logout")
    end

    it "can create an account given valid inputs" do
      signup
      expect(page).to have_content("Logout")
    end

    it "logs an existing user out" do
      login
      click_link("Logout")
      expect(page).to have_content("Hello, friend!")
    end
  end
end