require 'spec_helper'

describe "create your own story" do
  before :each do
    FactoryGirl.create(:user, name: 'Bill', email: 'bill@bill.com')
    FactoryGirl.create(:story, summary: 'Life Aquatic', content: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.')
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
