class MytaleImage < ActiveRecord::Base
  belongs_to :mytales
  belongs_to :people_images
end