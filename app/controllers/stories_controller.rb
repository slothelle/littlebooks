class StoriesController < ApplicationController
  def index
    @stories = Story.all
    grab_all_genders
  end

  def show
    grab_all_genders
    @story = Story.find(params[:id])
    @story_paged = @story.paged.slice!(5)
    @mytale = Mytale.new
  end
end

