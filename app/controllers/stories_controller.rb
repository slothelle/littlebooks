class StoriesController < ApplicationController
  include MytaleHelper

  def index
    @stories = Story.all
    get_genders
  end

  def show
    get_genders
    @story = Story.find(params[:id])
    @story_paged = @story.paged.slice!(5)
    @character = @story.character
    @mytale = Mytale.new
  end
end

