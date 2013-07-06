require 'spec_helper'

describe PeopleImage do
  it { should be_instance_of(PeopleImage) }
  it { should belong_to(:gender) }
  it { should belong_to(:ethnicity) }
  it { should validate_presence_of(:gender) }
  it { should validate_presence_of(:ethnicity) }
  it { should validate_presence_of(:url) }
end