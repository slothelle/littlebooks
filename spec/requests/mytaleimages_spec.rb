require 'spec_helper'

describe "Mytale_image" do
  before do
    populate_stories_mytales
    populate_images
  end

  it "allows a user to select an image" do
    FactoryGirl.create(:mytale)
    visit new_story_mytale_mytale_image_path(1,1)
    my_link = page.all("a")
    my_link[6].click
    expect(page).to have_content('Congratulations!')
  end
end
