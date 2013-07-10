class StoriesController < ApplicationController
  def index
    @stories = Story.all
    @mytale = Mytale.new
    @character = @story.character
    @mytales_character = MytalesCharacter.new
    grab_all_genders
    @story_paged = @story.paged.slice!(2)
  end

  def show
    grab_all_genders
    @story = Story.find(params[:id])
    @story_paged = @story.paged.slice!(3)
    @character = @story.character
    @mytale = Mytale.new
  end
end

