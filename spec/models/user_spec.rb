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

  it 'should be an instance of user' do 
   pending
  end

  it 'should have a valid name' do 
    pending
  end

  it 'should be invalid if there is no name' do 
    pending
  end

  it 'should have a valid email address' do 
    pending
  end

  it 'should have unique email' do
    pending
  end

  it 'should have a name with at least 4 characters' do 
    pending
  end

  it 'should give short message if name is less than 4 characters ' do 
    pending
  end
  
  it 'should hava a name with at most 20 characters' do 
    pending
  end

  it 'should give long message if name is more than 20 characters long ' do 
    pending
  end

  it 'should have emails with a valid format i.e. test@test.com' do 
    pending
  end

  it 'should not have emails with an invalid format i.e. blah.com' do 
    pending
  end

  it 'should have a password with at least 6 characters' do 

  end

  it 'should have a password with at most 15 characters' do 
    pending
  end

  it 'should give short message if password is less than 4 characters' do 
    pending
  end

  it 'should give long message if password is more than 15 characters' do 

  end

end