require 'spec_helper'

describe "User" do
  context "account authentication" do
    it "passes with correct credentials" do
      login
      expect(page).to have_content("Logout")
    end

    it "logs an existing user out" do
      login
      click_link("Logout")
      expect(page).to have_content("Hello, friend!")
    end

    it "fails with invalid password" do
      FactoryGirl.create(:user)
      visit new_session_path
      fill_in("Email", :with => "joe@joe.com")
      fill_in("Password", :with => "poo")
      click_button("Login")
      expect(page).to have_content("Authentication failed")
    end

    it "fails with invalid email" do
      FactoryGirl.create(:user)
      visit new_session_path
      fill_in("Email", :with => "joe")
      fill_in("Password", :with => "password1234")
      click_button("Login")
      expect(page).to have_content("An account with the email address joe not found")
    end
  end

  context "account creation" do
    it "succeeds with valid inputs" do
      signup
      expect(page).to have_content("Logout")
    end

    it "fails with invalid short name" do
      visit new_user_path
      fill_in("Name", :with => "L")
      fill_in("Email", :with => "joe@joe.com")
      fill_in("Password", :with => "password1234")
      click_button("Signup")
      expect(page).to have_content("must be at least 4 characters.")
    end

    it "fails with invalid long name" do
      visit new_user_path
      fill_in("Name", :with => "Lllllllllllllllllllllllllllllllllllllllllll")
      fill_in("Email", :with => "joe@joe.com")
      fill_in("Password", :with => "password1234")
      click_button("Signup")
      expect(page).to have_content("must be less than 20 characters.")
    end

    it "fails with invalid email" do
      visit new_user_path
      fill_in("Name", :with => "Joe")
      fill_in("Email", :with => "joe")
      fill_in("Password", :with => "password1234")
      click_button("Signup")
      expect(page).to have_content("Email is invalid")
    end

    it "fails with invalid short password" do
      visit new_user_path
      fill_in("Name", :with => "Joe")
      fill_in("Email", :with => "joe@joe.com")
      fill_in("Password", :with => "pass")
      click_button("Signup")
      expect(page).to have_content("must be at least 6 characters.")
    end

    it "fails with invalid long password" do
      visit new_user_path
      fill_in("Name", :with => "Joe")
      fill_in("Email", :with => "joe@joe.com")
      fill_in("Password", :with => "pafdkjfadjl;fjdklsa;jfkldsjfkl;adsjfl;ss")
      click_button("Signup")
      expect(page).to have_content("must be less than 15 characters.")
    end
  end
end