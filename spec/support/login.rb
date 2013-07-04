module LoginHelper
  def sign_in
    FactoryGirl.create(:user)
    visit login_path
    fill_in("Username", :with => "niles")
    fill_in("Password", :with => "1234")
    click_button("Login")
  end
end
