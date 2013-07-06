class MytaleCharacter < ActiveRecord::Base
  attr_accessible :name, :gender_id, :mytale_id, :character_id
  belongs_to :mytale
  belongs_to :gender
  belongs_to :character
end