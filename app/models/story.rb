class Story < ActiveRecord::Base
  attr_accessible :summary, :content, :title, :character

  has_many :mytales
  has_many :users, :through => :mytales
  belongs_to :character

  slice :content, :as => :paged, :window => 2, :slice => { :maximum => 300, :complete => /(?<=\.\s)|(?<=\!\s)/ }
end
