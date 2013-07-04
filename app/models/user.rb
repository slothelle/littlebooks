class User < ActiveRecord::Base
    
  attr_accessible :name, :email, :password

  has_many :mytales
  has_many :stories, :through => :mytales

  has_secure_password
end
