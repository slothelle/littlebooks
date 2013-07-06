class MytaleImage < ActiveRecord::Base
  belongs_to :mytale
  belongs_to :people_image
  validates_presence_of :mytale, :people_image
end
