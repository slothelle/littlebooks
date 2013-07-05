require 'spec_helper'

describe "create your own story" do
  before :each do
    FactoryGirl.create(:user, name: 'Bill', email: 'bill@bill.com')
  end

  it "creates a new mytale story" do
    new_mytale_path
    fill_in 'title', :with => 'Bill Adventures'
    fill_in 'main_character', :with => 'Hercules'
    click_button('create story')
    page.has_content?('Hercules and the three bears')
  end
end
