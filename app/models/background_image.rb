class BackgroundImage < ActiveRecord::Base
  attr_accessible :url, :story, :story_id
  validates_presence_of :url
  belongs_to :story
end