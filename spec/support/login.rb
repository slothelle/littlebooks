module LoginHelper
  def sign_in
    FactoryGirl.create(:user)
    visit login_path
    fill_in("Email", :with => "joe@joe.com")
    fill_in("Password", :with => "password1234")
    click_button("Login")
  end
end
