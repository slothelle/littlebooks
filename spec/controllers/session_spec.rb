require 'spec_helper'

describe SessionsController do
  render_views

  before do
    FactoryGirl.create(:user)
  end

  describe "GET session#new" do
    it "should render new" do
      get :new
      response.should render_template :new
    end

    it "should assign @user" do
      get :new
      expect(assigns(:user)).to be_an_instance_of(User)
    end
  end

  describe "POST session#create" do
    it "should assign @user" do
      post :create, email: "joe@joe.com", password: "password1234"
      expect(assigns(:user)).to eq(User.last)
    end

    context "with valid attributes" do
      it "should create a new session" do
        post :create, email: "joe@joe.com", password: "password1234"
        expect(session[:current_user_id]).to eq(User.last.id)
      end

      it "should redirect to @user" do
        post :create, email: "joe@joe.com", password: "password1234"
        response.should redirect_to user_path(User.last.id)
      end
    end

    context "with invalid attributes" do
      it "should assign @error upon invalid email submission" do
        post :create, email: "joe@joepoops.com", password: "password1234"
        expect(assigns(:error)).to include("An account with the email address joe@joepoops.com not found.")
      end

      it "should assign @error upon bad password submission" do
        post :create, email: "joe@joe.com", password: "pafdsssword1234"
        expect(assigns(:error)).to include("Authentication failed.")
      end
    end
  end

  describe "DELETE session#destroy" do
    it "should set the session to nil" do
      delete :destroy
      expect(session[:current_user_id]).to eq(nil)
    end
  end
end
