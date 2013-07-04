require 'spec_helper'

describe PeopleImage do 

  it { should be_instance_of(PeopleImage) }
  it { should belong_to(:gender) }
  it { should belong_to(:ethnicity) }

end