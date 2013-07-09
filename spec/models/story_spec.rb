require 'spec_helper'

describe Story do
  it { should be_instance_of(Story) }
  it { should allow_mass_assignment_of(:summary) }
  it { should allow_mass_assignment_of(:content) }
  it { should allow_mass_assignment_of(:title) }
  it { should allow_mass_assignment_of(:character) }
  it { should allow_mass_assignment_of(:character_id) }
  it { should allow_mass_assignment_of(:source_link) }
  it { should allow_mass_assignment_of(:attribution) }
  it { should have_many(:mytales) }
  it { should have_many(:users).through(:mytales) }
  it { should belong_to(:character) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:content) }
  it { should validate_presence_of(:summary) }
  it { should validate_presence_of(:character_id) }
  it { should validate_presence_of(:source_link) }
  it { should validate_presence_of(:attribution) }
end