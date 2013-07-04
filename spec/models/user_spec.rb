require 'spec-helper'

describe User do

  it {should be_instance_of(User)}
  it {should have_many(:mytales)}
  it {should have_many(:stores).through(:mytales)}


end