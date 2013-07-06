class Mytale < ActiveRecord::Base
  attr_accessible :main_character, :main_character_gender, :title, :summary, :title, :content, :user_id, :story_id

  belongs_to :user
  belongs_to :story

  validates_presence_of :content

  slice :content, :as => :paged, :window => 2, :slice => { :maximum => 300, :complete => /(?<=\.\s)|(?<=\!\s)/ }

  def replace_goldilocks
    self.content.gsub!(/Goldenhair/, self.main_character)
    if self.main_character_gender != "Female"
      self.content.gsub!(/\bmiss\b/, "lad")
      self.content.gsub!(/\bHer\b/, "His")
      self.content.gsub!(/\bherself\b/, "himself")
      self.content.gsub!(/\bher\b/, "his")
      self.content.gsub!(/\bShe\b/, "He")
      self.content.gsub!(/\bshe\b/, "he")
   end
  end
end
