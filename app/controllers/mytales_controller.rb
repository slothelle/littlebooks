class MytalesController < ApplicationController
  def new
    grab_story_character
    grab_all_genders
    @mytale = Mytale.new
    @mytales_character = MytalesCharacter.new
    @story_paged = @story.paged.slice!(5)
    render "_new"
  end

  def create
    grab_story_character
    create_mytales_character
    create_mytale
    if @mytale.save
      create_mytales_character_relationship
      redirect_to new_story_mytale_mytale_image_path(story_id: @story.id, mytale_id: @mytale.id)
    else
      render :new
    end
  end

  def edit
    @mytale = Mytale.find_by_id(params[:id])
    @mytales_character = MytalesCharacter.find_by_id(@mytale.mytales_character_id)
    grab_story_character
    grab_all_images
    grab_all_genders
    if current_user && (current_user = @mytale.user)
      render :edit
    else
      render "shared/denied"
    end
  end

  def update
    grab_all_genders
    grab_all_images
    grab_story_character
    @mytale = Mytale.find_by_id(params[:id])
    @mytales_character = MytalesCharacter.find_by_id(@mytale.mytales_character_id)
    @myimage = MytaleImage.find_by_mytale_id(params[:id])
    update_all_mytales
    if @mytale.save && @mytales_character.save && @myimage.save
      redirect_to story_mytale_path(story_id: @story.id, mytale_id: @mytale.id)
    else
      render :edit
    end
  end

  def show
    @mytale = Mytale.find(params[:id])
    find_image
  end

  def destroy
    @mytale = Mytale.find(params[:id])
    if current_user&& (current_user = @mytale.user)
      @mytale.destroy
      redirect_to stories_path
    else
      render "shared/denied"
    end
  end

  def print
    @mytale = Mytale.find_by_id(params[:mytale_id])
    find_image
    render layout: "print"
  end

  def read
    @mytale = Mytale.find_by_id(params[:mytale_id])
    @story_paged = @mytale.page.slice!(params[:slice])
    find_image
    respond_to do |format|
      format.html { render layout: "read" }
      format.js {}
    end
  end
end
