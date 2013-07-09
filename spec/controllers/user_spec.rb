require 'spec_helper'

describe UsersController do
  render_views

  describe "GET users#new" do
    it "should render new" do
      get :new
      response.should render_template :new
    end

    it "should assign @user" do
      get :new
      expect(assigns(:user)).to be_an_instance_of(User)
    end
  end

  describe "GET users#show" do
    it "should render show" do
      u = FactoryGirl.create(:user)
      get :show, id: u
      response.should render_template :show
    end

    it "should assign @user" do
      u = FactoryGirl.create(:user)
      get :show, id: u
      expect(assigns(:user)).to eq(u)
    end

    it "should assign @mytales" do
      u = FactoryGirl.create(:user)
      get :show, id: u
      expect(assigns(:mytales)).to eq(u.mytales)
    end
  end

  describe "POST users#create" do
    context "with valid attributes" do
      it "should create a new user" do
        expect { post :create, user: FactoryGirl.attributes_for(:user) }.to change(User,:count).by(1)
      end

      it "should redirect to @user upon successful creation" do
        post :create, user: FactoryGirl.attributes_for(:user)
        response.should redirect_to User.last
      end

      it "should create_session upon successful creation" do
        post :create, user: FactoryGirl.attributes_for(:user)
        expect(session[:current_user_id]).to eq(User.last.id)
      end
    end

    context "with invalid attributes" do
      it "should render _new upon failed creation" do
        post :create
        response.should render_template :new
      end

      it "should assign @error upon failed creation" do
        post :create
        expect(assigns(:error)).to include("Password can't be blank.")
      end
    end

  end
end
