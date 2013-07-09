require 'spec_helper'

describe MytalesController do
  render_views

  before do
    FactoryGirl.create(:story)
    FactoryGirl.create(:gender)
    FactoryGirl.create(:people_image)
    FactoryGirl.create(:character)
    FactoryGirl.create(:user)
    suzy = MytalesCharacter.create(name: "Suzy", gender: Gender.last, character: Character.last)
    tale = Mytale.create(story_id: Story.last.id, summary: "taco taco taco", title: "Tacos!", content: "#{'More tacos!' * 100}", mytales_character_id: suzy.id, user: User.last)
    image = MytaleImage.create(people_image_id: PeopleImage.last.id, mytale_id: tale.id)
    tale.update_attributes(mytale_image: image)
    suzy.update_attributes(mytale_id: tale.id)
  end

  describe "GET mytales#new" do
    it "should render new template" do
      get :new, story_id: Story.last.id
      response.should render_template :new
    end
  end

  describe "GET mytales#edit" do
    it "should render new template" do
      get :edit, story_id: Story.last.id, id: Mytale.last.id
      response.should render_template :edit
    end
  end

  describe "GET mytales#show" do
    it "should render show template" do
      get :show, story_id: Story.last.id, id: Mytale.last.id
      response.should render_template :show
    end
  end

  describe "GET mytales#print" do
    it "should render print template" do
      get :print, story_id: Story.last.id, mytale_id: Mytale.last.id
      response.should render_template :print
    end
  end

  describe "GET mytales#read" do
    it "should render read template" do
      get :read, story_id: Story.last.id, mytale_id: Mytale.last.id
      response.should render_template :read
    end

    it "should render AJAX page turns" do
      get :read, story_id: Story.last.id, mytale_id: Mytale.last.id, slice: 2, format: :js
      expect(response.headers['Content-Type']).to have_content('text/javascript')
    end

    it "should return content on AJAX page turn" do
      get :read, story_id: Story.last.id, mytale_id: Mytale.last.id, slice: 2, format: :js
      expect(response.body).to have_content('More tacos!')
    end
  end

  describe "POST mytales#create" do
    context "with valid attributes" do
      it "should create a new mytale" do
        pending
      end

      it "should update mytales_character with mytale_id" do
        pending
      end

      it "should redirect to mytaleimages#new" do
        pending
      end

      it "should call method mytale.replace_goldilocks" do
        pending
      end
    end

    context "with invalid attributes" do
      it "should render mytales#new" do
        pending
      end
    end
  end

  describe "POST mytales#update" do
    context "with valid attributes" do
      it "should create a new mytale" do
        pending
      end

      it "should update mytales_character with mytale_id" do
        pending
      end

      it "should redirect to mytaleimages#new" do
        pending
      end

      it "should call method mytale.replace_goldilocks" do
        pending
      end
    end

    context "with invalid attributes" do
      it "should render mytales#new" do
        pending
      end
    end
  end
end