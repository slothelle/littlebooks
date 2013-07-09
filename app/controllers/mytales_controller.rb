class MytalesController < ApplicationController
  def new
    @story = Story.find_by_id(params[:story_id])
    @character = @story.character
    @mytale = Mytale.new
    @mytales_character = MytalesCharacter.new
    @gender = Gender.all
  end

  def create
    @story = Story.find_by_id(params[:story_id])
    @mytales_character = MytalesCharacter.create(name: params[:name], gender: Gender.find(params[:gender]), character: @story.character)
    params[:mytale][:mytales_character_id] = @mytales_character.id
    @mytale = Mytale.new(params[:mytale])
    @mytale.replace_goldilocks
    if @mytale.save
      @mytales_character.update_attributes(mytale_id: @mytale.id)
      @mytale.update_attributes(user: current_user)
      redirect_to new_story_mytale_mytale_image_path(story_id: @story.id, mytale_id: @mytale.id)
    else
      render :new
    end
  end

  def edit
    @story = Story.find_by_id(params[:story_id])
    @mytale = Mytale.find_by_id(params[:id])
    @character = @story.character
    @peopleimages = PeopleImage.all
    @mytales_character = MytalesCharacter.find_by_id(@mytale.mytales_character_id)
    @gender = Gender.all
  end

  def update
    p params
    @story = Story.find_by_id(params[:story_id])
    @mytale = Mytale.find_by_id(params[:id])
    @mytales_character = MytalesCharacter.find_by_id(@mytale.mytales_character_id)
    @mytales_character.assign_attributes(name: params[:name], gender: Gender.find(params[:gender]))
    @mytale.assign_attributes(params[:mytale])
    @myimage = MytaleImage.find_by_mytale_id(params[:id])
    p params[:image_ids].inspect
    @myimage.assign_attributes(people_image_id: params[:image_ids][0].to_i)
    p @myimage.inspect
    p "hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh"
    if @mytale.save && @mytales_character.save &&@myimage.save

      redirect_to story_mytale_path(story_id: @story.id, mytale_id: @mytale.id)
    else
      render :edit
    end
  end

  def show
    @mytale = Mytale.find(params[:id])
    image = MytaleImage.find_by_id(@mytale.mytale_image_id)
    @image = PeopleImage.find_by_id(image.people_image_id)
  end

  def print
    @mytale = Mytale.find_by_id(params[:mytale_id])
    image = MytaleImage.find_by_id(@mytale.mytale_image_id)
    @image = PeopleImage.find_by_id(image.people_image_id)
    render layout: "print"
  end

  def read
    @story = Mytale.find_by_id(params[:mytale_id])
    @story_paged = @story.page.slice!(params[:slice])
    @kid = PeopleImage.find_by_id(@story.mytale_image.people_image_id)
    respond_to do |format|
      format.html { render layout: "read" }
      format.js {}
    end
  end
end
