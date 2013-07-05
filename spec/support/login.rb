module LoginHelper
  def login
    FactoryGirl.create(:user)
    visit new_session_path
    fill_in("Email", :with => "joe@joe.com")
    fill_in("Password", :with => "password1234")
    click_button("Login")
  end

  def signup
    visit new_user_path
    fill_in("Name", :with => "Joe")
    fill_in("Email", :with => "joe@joe.com")
    fill_in("Password", :with => "password1234")
    click_button("Signup")
  end
end
