require 'spec_helper'

describe User do

  it { should be_instance_of(User) }
  it { should have_many(:mytales) }
  it { should have_many(:stories).through(:mytales) }
  it { should validate_presence_of(:name) }
  it { should ensure_length_of(:name).is_at_least(4).with_short_message(/Please choose a name with at least 4 characters/) }
  it { should ensure_length_of(:name).is_at_most(20).with_long_message(/Please choose a name with less than 20 characters/) }
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }
  it { should validate_presence_of(:password) }
  it { should ensure_length_of(:password).is_at_least(6).with_short_message(/Please choose a password with at least 6 characters/) }
  it { should ensure_length_of(:password).is_at_most(15).with_long_message(/Please choose a password with less than 15 characters/) }

  it { should_not allow_value("blah").for(:email) }
  it { should allow_value("little@littlebooks.com").for(:email) }
  it { should allow_mass_assignment_of(:name) }
  it { should allow_mass_assignment_of(:email) }
  it { should allow_mass_assignment_of(:password) } #we shouldn't allow mass assignment to password?

end