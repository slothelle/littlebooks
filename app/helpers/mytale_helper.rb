module MytaleHelper
  def get_genders
    @gender = Gender.all
  end

  def get_images
    @peopleimages = PeopleImage.all
  end

  def get_story_image
    @image = PeopleImage.find_by_id(@mytale.mytale_image.people_image_id)
  end

  def get_story_character
    @story = Story.find_by_id(params[:story_id])
    @character = @story.character
  end

  def create_mytales_character
    @mytales_character = MytalesCharacter.create(name: params[:name], gender: Gender.find(params[:gender]), character: @story.character)
  end

  def create_mytale
    params[:mytale][:mytales_character_id] = @mytales_character.id
    @mytale = Mytale.new(params[:mytale])
    @mytale.replace_text
  end

  def create_mytales_character_relationship
    @mytales_character.update_attributes(mytale_id: @mytale.id)
    @mytale.update_attributes(user: current_user)
  end

  def create_mytale_image
    @myimage = MytaleImage.new(people_image_id: params[:people_image_id], mytale_id: params[:mytale_id])
  end

  def update_all_mytales
    @mytale.assign_attributes(params[:mytale])
    @mytales_character.assign_attributes(name: params[:name], gender: Gender.find(params[:gender]))
    @myimage.assign_attributes(people_image_id: params[:image_ids][0].to_i)
  end

end
