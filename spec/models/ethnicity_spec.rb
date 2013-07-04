require 'spec_helper'

describe Ethnicity do

it { should be_instance_of(Ethnicity) }
it { should have_many(:people_images) }

end