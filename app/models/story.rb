class Story < ActiveRecord::Base
  attr_accessible :summary, :content, :title, :main_character, :main_character_gender

  has_many :mytales
  has_many :users, :through => :mytales

  slice :content, :as => :paged, :window => 2, :slice => { :maximum => 300, :complete => /(?<=\.\s)|(?<=\!\s)/ }
end
