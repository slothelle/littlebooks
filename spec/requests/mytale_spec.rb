require 'spec_helper'

describe "Mytale" do
  before do
    populate_stories_mytales
    populate_images
  end

  context "user is logged in" do
    before do
      login
    end

    it "creates a new mytale story with all attributes filled out" do
      home_filler
      select "female", :from => 'gender'
      click_button('Customize')
      expect(page).to have_content('Bill Adventures')
    end

    it "does not allow user to create a story if gender is not selected", js: :true do
      home_filler
      click_button('Customize')
      expect(page).to have_content('Please Enter a Gender')
    end
  end
  context "user is not logged in" do
    it "creates a new mytale story" do
      home_filler
      select "female", :from => 'gender'
      click_button('Customize')
      expect(page).to have_content('Bill Adventures')
    end

    it "does not allow user to create a story if gender is not selected", js: :true do
      home_filler
      click_button('Customize')
      expect(page).to have_content('Please Enter a Gender')
    end
  end
end
