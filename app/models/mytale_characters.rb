class MytaleCharacter < ActiveRecord::Base
  attr_accessible :name, :gender, :mytale, :character
  belongs_to :mytale
  belongs_to :gender
  belongs_to :character
  validates_presence_of :name, :gender, :mytale, :character
end