feature "Signing in" do
  background do
    @user_attributes = attributes_for :user
    user = create :user, @user_attributes
  end

  scenario "Signing in with correct credentials" do
    visit login_path

    fill_in 'email', :with => @user_attributes[:email]
    fill_in 'password', :with => @user_attributes[:password]
    click_button 'Авторизоваться'

    expect(page).to have_content @user_attributes[:email]
    expect(page).to have_content 'Выход'
  end

  scenario "Signing in with incorrect credentials" do
    visit login_path

    fill_in 'email', :with => 'test@example.com'
    fill_in 'password', :with => '1231'
    click_button 'Авторизоваться'

    expect(page).to_not have_content 'test@example.com'
    expect(page).to have_content 'Вход'
  end

end
