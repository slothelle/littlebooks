module SeederHelper
  def populate_stories_mytales
    FactoryGirl.create(:gender)
    FactoryGirl.create(:girl)
    FactoryGirl.create(:character)
    FactoryGirl.create(:mytales_character)
    FactoryGirl.create(:story)
  end

  def populate_images
    FactoryGirl.create(:mytale_image)
    FactoryGirl.create(:people_image)
  end
end
