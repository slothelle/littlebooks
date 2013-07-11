module GeneralHelper
  def home_filler
    FactoryGirl.create(:background_image)
    story = Story.create(summary: "Summary", content: "#{'Content' * 200}", title: "Title", character_id: Character.last.id, source_link: "Link", attribution: "attribution", background_image: BackgroundImage.last)
    visit new_story_mytale_path(Story.last.id)
    fill_in 'mytale[title]', :with => 'Bill Adventures'
    fill_in 'name', :with => 'Hercules'
  end
end
