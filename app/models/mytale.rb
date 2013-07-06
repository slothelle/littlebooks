class Mytale < ActiveRecord::Base
  attr_accessible :title, :summary, :title, :content, :user, :story_id, :mytales_character_id

  belongs_to :user
  belongs_to :story
  belongs_to :mytales_character

  validates_presence_of :title, :content, :user, :story, :mytales_character

  slice :content, :as => :paged, :window => 2, :slice => { :maximum => 300, :complete => /(?<=\.\s)|(?<=\!\s)/ }

  def replace_goldilocks
    content.gsub!(/#{story.character.name}/, mytales_character.name)
    subber = {/\bmiss\b/ => "lad", /\bHer\b/ => "His", /\bherself\b/ => "himself",
            /\bher\b/ => "his", /\bShe\b/ => "He", /\bshe\b/ => "he"}
    if mytales_character.gender.sex != "female"
      subber.each {|k,v| content.gsub!(k,v)}
    end
  end
end
