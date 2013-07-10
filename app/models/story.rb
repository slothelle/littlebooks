class Story < ActiveRecord::Base
  attr_accessible :summary, :content, :title, :character_id, :source_link, :attribution, :character

  has_many :mytales
  has_many :users, :through => :mytales
  belongs_to :character
  belongs_to :background_image

  slice :content, :as => :paged, :window => 2, :slice => { :maximum => 100, :complete => /(?<=\.\s)|(?<=\!\s)/ }

  validates_presence_of :title, :content, :summary, :character_id, :source_link, :attribution

end
