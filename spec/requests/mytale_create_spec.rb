require 'spec_helper'

describe "create your own story" do
  before :each do
    login
  end

  # it "creates a new mytale story", js: true do
  #   girl = Gender.create(sex: "female")
  #   c = Character.create(name: "Banana", story_id: 1, gender: girl)
  #   s = Story.create(title: "Test me pooper", summary: "1, 2, 3, 4", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur, ex, omnis pariatur vero dolores saepe libero modi corrupti ullam odit nam quaerat harum sint. Amet, reiciendis dignissimos in sint dolorem!", character: c)
  #   visit new_story_mytale_path(s.id)
  #   fill_in 'mytale[title]', :with => 'Bill Adventures'
  #   fill_in 'name', :with => 'Hercules'
  #   click_button('Customize')
  #   expect(page).to have_content('Bill Adventures')
  # end
end
