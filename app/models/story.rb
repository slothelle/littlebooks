class Story < ActiveRecord::Base
  has_many :mytales
  has_many :users, :through => :mytales
end