require 'spec_helper'

describe Mytale do
  it { should be_instance_of(Mytale) }
  it { should belong_to(:user) }
  it { should belong_to(:story) }
  it { should belong_to(:mytales_character) }
  it { should belong_to(:mytale_image) }
  it { should validate_presence_of(:content) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:story_id) }
  it { should validate_presence_of(:mytales_character_id) }
  it { should allow_mass_assignment_of(:title) }
  it { should allow_mass_assignment_of(:summary) }
  it { should allow_mass_assignment_of(:content) }
  it { should allow_mass_assignment_of(:user) }
  it { should allow_mass_assignment_of(:story_id) }
  it { should allow_mass_assignment_of(:mytales_character_id) }
  it { should allow_mass_assignment_of(:mytale_image_id) }

  context "replace_goldilocks" do
    before do
      FactoryGirl.create(:gender)
      FactoryGirl.create(:story)
      Character.create(name: "Colinpants", story_id: Story.last.id, gender: Gender.last)
      MytalesCharacter.create(name: "Eggbert", character: Character.last, gender: Gender.last)
    end

    it "should replace 'Colinpants' with 'Eggbert'" do
      mytale = Mytale.create(story_id: Story.last.id, summary: "Hello", content: "Colinpants young miss", title: "Hello three", mytales_character_id: MytalesCharacter.last.id)
      mytale.replace_goldilocks
      mytale.save
      expect(mytale.content).to match(/Eggbert/)
    end

    it "should change gender pronouns" do
      mytale = Mytale.create(story_id: Story.last.id, summary: "Hello", content: "Colinpants young miss", title: "Hello three", mytales_character_id: MytalesCharacter.last.id)
      mytale.replace_goldilocks
      mytale.save
      expect(mytale.content).to include("young lad")
    end
  end
end