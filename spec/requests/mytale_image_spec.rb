require 'spec_helper'

describe "MytaleImage" do
  before do
    populate_stories_mytales
    populate_images
  end

  it "allows a user to select an image", js: true do
    FactoryGirl.create(:mytale)
    visit new_story_mytale_mytale_image_path(Story.last.id, Mytale.last.id)
    link_id = PeopleImage.last.id
    click_link(link_id)
    expect(page).to have_content('Read story now!')
  end
end
