require 'spec_helper'

describe Gender do

it { should be_instance_of(Gender) }
it { should have_many(:people_images) }
it { should allow_mass_assignment_of(:sex) }

end