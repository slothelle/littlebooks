require 'spec_helper'

describe "MytaleImage" do
  it "allows a user to select an image" do
    populate_stories_mytales
    populate_images
    story = Story.create(summary: "Summary", content: "Content", title: "Title", character_id: Character.last.id, source_link: "Link", attribution: "attribution")
    tale = Mytale.create(title: "Title", content: "Content", story_id: Story.last.id, mytales_character_id: MytalesCharacter.last.id)
    visit new_story_mytale_mytale_image_path(story.id, tale.id)
    link_id = PeopleImage.last.id
    click_link(link_id)
    expect(page).to have_content('Read story now!')
  end
end
