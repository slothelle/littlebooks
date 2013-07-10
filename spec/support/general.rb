module GeneralHelper
  def home_filler
    visit root_path
    fill_in 'mytale[title]', :with => 'Bill Adventures'
    fill_in 'name', :with => 'Hercules'
  end
end
