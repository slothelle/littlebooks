class Mytale < ActiveRecord::Base
  attr_accessible :title, :summary, :content, :user, :story, :mytale_character

  belongs_to :user
  belongs_to :story
  belongs_to :mytale_character

  validates_presence_of :title, :content, :user, :story, :mytale_character

  slice :content, :as => :paged, :window => 2, :slice => { :maximum => 300, :complete => /(?<=\.\s)|(?<=\!\s)/ }

  def replace_goldilocks
    content.gsub!(/#{story.main_character}/, main_character)
    subber = {/\bmiss\b/ => "lad", /\bHer\b/ => "His", /\bherself\b/ => "himself",
            /\bher\b/ => "his", /\bShe\b/ => "He", /\bshe\b/ => "he"}
    if main_character_gender != "Female"
      subber.each {|k,v| content.gsub!(k,v)}
    end
  end
end
