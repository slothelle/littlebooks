class StoriesControllers < AppplicationController
  def new
  end

  def show
    @story = Story.find(params[:id])
  end
end
