require 'spec_helper'

describe Mytale do 

  it { should be_instance_of(Mytale) }
  it { should belong_to(:user) }
  it { should belong_to(:story) }
  it { should validate_presence_of(:content) }
  it { should validate_presence_of(:summary) }

end