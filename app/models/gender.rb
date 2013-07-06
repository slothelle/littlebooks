class Gender < ActiveRecord::Base
  attr_accessible :sex
  has_many :people_images
  has_many :characters
  has_many :mytale_characters
  validates_presence_of :sex
end