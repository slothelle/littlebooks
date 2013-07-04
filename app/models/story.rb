class Story < ActiveRecord::Base
  attr_accessible :summary, :content

  has_many :mytales
  has_many :users, :through => :mytales
end
