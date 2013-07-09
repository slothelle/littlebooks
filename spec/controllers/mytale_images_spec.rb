require 'spec_helper'

describe MytaleImagesController do
  render_views

  before do
    FactoryGirl.create(:gender)
    FactoryGirl.create(:story)
    FactoryGirl.create(:character)
    FactoryGirl.create(:mytale)
    FactoryGirl.create(:mytales_character)
    FactoryGirl.create(:people_image)
  end

  describe "GET mytale_images#new" do
    it "should render new" do
      get :new, story_id: Story.last.id, mytale_id: Mytale.last.id
      response.should render_template :new
    end

    it "should assign @peopleimages" do
      get :new, story_id: Story.last.id, mytale_id: Mytale.last.id
      expect(assigns(:peopleimages)).to eq(PeopleImage.all)
    end

    it "should assign @mytale" do
      get :new, story_id: Story.last.id, mytale_id: Mytale.last.id
      expect(assigns(:mytale)).to eq(Mytale.last)
    end

    it "should assign @mycharacter" do
      get :new, story_id: Story.last.id, mytale_id: Mytale.last.id
      expect(assigns(:mycharacter)).to eq(MytalesCharacter.find(MytalesCharacter.last.id-1))
    end
  end


  describe "POST mytale_images#create" do
    context "with valid attributes" do
      it "should create a new mytale_image" do
        expect { post :create, story_id: Story.last.id, mytale_id: Mytale.last.id, people_image_id: 1 }.to change(MytaleImage,:count).by(1)
      end

      it "should update mytale_image_id in mytale" do
        post :create, story_id: Story.last.id, mytale_id: Mytale.last.id, people_image_id: 1
        expect(Mytale.last.mytale_image_id).to eq(MytaleImage.last.id)
      end

      it "should redirect to mytale#show upon success" do
        post :create, story_id: Story.last.id, mytale_id: Mytale.last.id, people_image_id: 1
        response.should redirect_to story_mytale_path(1, Mytale.last.id)
      end
    end

    context "with invalid attributes" do
      it "should render mytale_images#new upon failure" do
        post :create, story_id: Story.last.id, mytale_id: Mytale.last.id
        response.should redirect_to new_story_mytale_path(1)
      end
    end
  end
end
