class Story < ActiveRecord::Base
  attr_accessible :summary, :content, :title, :character

  has_many :mytales
  has_many :users, :through => :mytales
  belongs_to :character

  slice :content, :as => :paged, :window => 2, :slice => { :maximum => 500, :complete => /(?<=\.\s)|(?<=\!\s)/ }

  validates_presence_of :title, :content, :summary, :character_id, :source_link, :attribution
end
