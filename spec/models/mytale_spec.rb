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
    before(:all) do
      FactoryGirl.create(:gender)
      FactoryGirl.create(:character)
      FactoryGirl.create(:mytales_character)
      FactoryGirl.create(:story)
    end

    it "should replace 'Colinpants' with 'Eggbert'" do
      mytale = FactoryGirl.create(:mytale)
      mytale.replace_goldilocks
      mytale.save
      expect(mytale.content).to match(/Eggbert/)
    end

    it "should change gender pronouns" do
      mytale = FactoryGirl.create(:mytale)
      mytale.replace_goldilocks
      mytale.save
      expect(mytale.content).to include("That there lived a young lad")
    end
  end
end