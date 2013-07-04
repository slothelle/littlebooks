class User < ActiveRecord::Base
    
  attr_accessible :name, :email, :password

  has_many :mytales
  has_many :stories, :through => :mytales

  has_secure_password

  validates_uniqueness_of :email
  validates_presence_of :name, :email, :password
  validates :email, :format {:with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ }
  validates_length_of :name, :within => 4..20, :too_long => "Please choose a name with less than 20 characters", :too_short => "Please choose a name with at least 4 characters"
  validates_length_of :password, :within => 6..15, :too_long => "Please choose a password with less than 15 characters", :too_short => "Please choose a password with at least 6 characters"
end
