require 'spec_helper'

describe "Mytale" do
  before (:each) do
    populate_stories_mytales
  end
  context "user is logged in" do
    before :each do
      login
    end

    it "creates a new mytale story with all attributes filled out", js: true do
      click_link "Home"
      fill_in 'mytale[title]', :with => 'Bill Adventures'
      fill_in 'name', :with => 'Hercules'
      select "male", :from => 'gender'
      click_button('Customize')
      expect(page).to have_content('Bill Adventures')
    end

    it "does not allow user to create a story if gender is not selected", js: true do
      click_link "Home"
      fill_in 'mytale[title]', :with => 'Bill Adventures'
      fill_in 'name', :with => 'Hercules'
      click_button('Customize')
      expect(page).to have_content('Please choose a gender')
    end

  end

  context "user is not logged in" do
    it "creates a new mytale story", js: true do
      visit root_path
      fill_in 'mytale[title]', :with => 'Bill Adventures'
      fill_in 'name', :with => 'Hercules'
      select "male", :from => 'gender'
      click_button('Customize')
      expect(page).to have_content('Bill Adventures')
    end
  end
end
