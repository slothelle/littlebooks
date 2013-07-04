require 'spec_helper'

describe Story do 
  
  it { should be_instance_of(Story) }
  it { should have_many(:mytales) }
  it { should have_many(:users).through(:mytales) }
  it { should allow_mass_assignment_of(:summary) }
  it { should allow_mass_assignment_of(:content) }
  it { should allow_mass_assignment_of(:title) }
  it { should allow_mass_assignment_of(:main_character) }
  it { should allow_mass_assignment_of(:main_character_gender) }


end