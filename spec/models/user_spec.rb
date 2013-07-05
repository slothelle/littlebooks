require 'spec_helper'

describe User do

  it { should be_instance_of(User) }
  it { should have_many(:mytales) }
  it { should have_many(:stories).through(:mytales) }
  it { should validate_presence_of(:name) }
  it { should ensure_length_of(:name).is_at_least(2).with_short_message(/must be at least 4 characters/) }
  it { should ensure_length_of(:name).is_at_most(20).with_long_message(/must be less than 20 characters/) }
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }
  it { should validate_presence_of(:password) }
  it { should ensure_length_of(:password).is_at_least(6).with_short_message(/must be at least 6 characters/) }
  it { should ensure_length_of(:password).is_at_most(15).with_long_message(/must be less than 15 characters/) }

  it { should_not allow_value("blah").for(:email) }
  it { should allow_value("little@littlebooks.com").for(:email) }
  it { should allow_mass_assignment_of(:name) }
  it { should allow_mass_assignment_of(:email) }
  it { should allow_mass_assignment_of(:password) } #we shouldn't allow mass assignment to password?

  context 'with valid input' do

    it 'should create a user' do
      person = FactoryGirl.create(:user)
      expect(person).to be_instance_of(User)
    end

  end

  context 'with invalid input' do

    it 'should not create a user without a name' do
      person = User.create(email: "jackie@awesome", password: "123Ab3cd")
      expect(person.id).to be(nil)
    end

    it 'should not create a user without an email' do
      person = User.create(name: "Jackiew Awesome", password: "123Ab3cd")
      expect(person.id).to be(nil)
    end

    it 'should not create a usser without a password' do
      person = User.create(name: "Jackiew Awesome", email: "jackie@awesome")
      expect(person.id).to be(nil)
    end
  end
end