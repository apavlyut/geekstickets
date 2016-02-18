feature "Signing in" do
  background do
    @user_attributes = attributes_for :user
  end

  scenario "Success signing up" do
    # expect(User.count).to be 0

    visit new_user_path

    save_and_open_page
    fill_in 'Name', :with => @user_attributes[:name]
    fill_in 'Email', :with => @user_attributes[:email]
    fill_in 'Password', :with => @user_attributes[:password]
    fill_in 'Password confirmation', :with => @user_attributes[:password]
    click_button 'Сохранить'

    # expect(page).to have_content @user_attributes[:email]
    # expect(page).to have_content 'Выход'
    # expect(User.count).to be 1

  end
end
