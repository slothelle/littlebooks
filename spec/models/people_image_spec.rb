require 'spec_helper'

describe PeopleImage do
  it { should be_instance_of(PeopleImage) }
  it { should belong_to(:gender) }
  it { should validate_presence_of(:gender) }
  it { should validate_presence_of(:url) }
  it { should allow_mass_assignment_of(:gender) }
  it { should allow_mass_assignment_of(:url) }
end