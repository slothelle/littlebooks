module SeederHelper
  def populate_stories_mytales
    FactoryGirl.create(:gender)
    FactoryGirl.create(:character)
    FactoryGirl.create(:mytales_character)
    FactoryGirl.create(:story)
  end
end