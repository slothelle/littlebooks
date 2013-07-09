require 'spec_helper'

describe Gender do
  it { should be_instance_of(Gender) }
  it { should have_many(:people_images) }
  it { should have_many(:characters) }
  it { should have_many(:mytales_characters) }
  it { should allow_mass_assignment_of(:sex) }
  it { should validate_presence_of(:sex) }
end