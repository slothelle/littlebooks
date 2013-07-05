class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end

  def new
  end

  def show
    @story = Story.find(params[:id])
    @story_paged = @story.paged.slice!(params[:slice])
    render layout: "read"
  end
end
