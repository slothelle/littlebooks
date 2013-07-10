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
  end

  describe "POST session#create" do
    it "should redirect to @user" do
      post :create, email: "joe@joe.com", password: "password1234"
      response.should redirect_to user_path(User.last.id)
    end
  end

  describe "DELETE session#destroy" do
    it "should set the session to nil" do
      delete :destroy
      expect(session[:current_user_id]).to eq(nil)
    end
  end
end
