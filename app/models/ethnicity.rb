class Ethnicity < ActiveRecord::Base
  has_many :people_images
  validates_presence_of :group
end