require 'spec_helper'

describe "create your own story" do
  before :each do
    login
    Gender.create(sex: "male")
    Gender.create(sex: "female")
    FactoryGirl.create(:character)
    FactoryGirl.create(:story)
  end

  it "creates a new mytale story" do
    login
    visit new_story_mytale_path(1)
    fill_in 'mytale_title', :with => 'Bill Adventures'
    fill_in 'mytale[main_character]', :with => 'Hercules'
    click_button('Customize')
    expect(page).to have_content('Bill Adventures')
  end
end
