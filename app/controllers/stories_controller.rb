class StoriesController < ApplicationController
  def index
    @story = Story.first
    @mytale = Mytale.new
    @character = @story.character
    @mytales_character = MytalesCharacter.new
    @gender = Gender.all
    @story_paged = @story.paged.slice!(2)
  end

  def new
  end

  def show
    @story = Story.find(params[:id])
    @story_paged = @story.paged.slice!(params[:slice])
    render layout: "read"
  end
end
