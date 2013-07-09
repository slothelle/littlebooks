class StoriesController < ApplicationController
  def index
    if !current_user 
      @story = Story.first
      @mytale = Mytale.new
      @character = @story.character
      @mytales_character = MytalesCharacter.new
      @gender = Gender.all
      @story_paged = @story.paged.slice!(2)
      render "_new"
    elsif current_user
      @story = Story.all
      @mytale = Mytale.new
      render "_loggedin"
    end
  end

  def new
  end

  def show
    @story = Story.find(params[:id])
    @story_paged = @story.paged.slice!(params[:slice])
    render layout: "read"
  end
end

