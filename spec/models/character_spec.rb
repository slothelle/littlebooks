require 'spec_helper'

describe Character do
  it { should be_instance_of(Character) }
  it { should belong_to(:story) }
  it { should belong_to(:gender) }
  it { should have_many(:mytales_characters) }
  it { should allow_mass_assignment_of(:name) }
  it { should allow_mass_assignment_of(:story) }
  it { should allow_mass_assignment_of(:gender) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:story_id) }
  it { should validate_presence_of(:gender_id) }
  it { should ensure_length_of(:name).is_at_least(2).with_short_message(/must be at least 2 characters/) }
  it { should ensure_length_of(:name).is_at_most(20).with_long_message(/must be less than 20 characters/) }
end