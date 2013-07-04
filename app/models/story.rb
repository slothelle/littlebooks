class Story < ActiveRecord::Base
  attr_accessible :summary, :content, :title, :main_character, :main_character_gender

  has_many :mytales
  has_many :users, :through => :mytales
end
