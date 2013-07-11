class Mytale < ActiveRecord::Base
  attr_accessible :title, :summary, :content, :user, :story_id, :mytales_character_id, :mytale_image_id, :mytales_character, :mytale_image

  belongs_to :user
  belongs_to :story
  belongs_to :mytales_character
  belongs_to :mytale_image

  validates_presence_of :title, :content, :story_id, :mytales_character_id

  slice :content, :as => :page, :window => 0, :slice => { :maximum => 175, :complete => /(?<=\.\s)|(?<=\!\s)|(?<=\,\s)|(?<=\'\s)|(?<=\;\s)|(?<=\:\s)/ }
  slice :content, :as => :edit, :window => 0, :slice => { :maximum => 100, :complete => /(?<=\.\s)|(?<=\!\s)/ }

  def replace_text
    replace_main_char(/#{story.character.name}/, mytales_character.name)
    subber = subber_goldy

    if mytales_character.gender.sex != "female"
      subber.each {|female, male| content.gsub!(female, male)}
    end
  end

  def replace_main_char(currentchar, newchar)
    content.gsub!(/#{currentchar}/, newchar)
  end

  def subber_goldy
    {/\bmiss\b/ => "lad", /\bHer\b/ => "His", /\bherself\b/ => "himself",
            /\bher\b/ => "his", /\bShe\b/ => "He", /\bshe\b/ => "he", /\bprincess\b/ => "prince", /\bgirl\b/ => "boy", /\bPrincess\b/ => "Prince"}
  end
end


