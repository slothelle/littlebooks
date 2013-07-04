class User < ActiveRecord::Base
  has_many :mytales
  has_many :stories, :through => :mytales

end
