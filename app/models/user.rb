class User < ActiveRecord::Base

  attr_accessible :name, :email, :password

  has_many :mytales
  has_many :stories, :through => :mytales

  has_secure_password

  validates_uniqueness_of :email
  validates_presence_of :name, :email, :password
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
  validates_length_of :name, :within => 2..20, :too_long => "Please choose a name with less than 20 characters", :too_short => "Please choose a name with at least 2 characters"
  validates_length_of :password, :within => 6..15, :too_long => "Please choose a password with less than 15 characters", :too_short => "Please choose a password with at least 6 characters"
end
