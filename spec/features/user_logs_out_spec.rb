require 'rails_helper'

feature "user logs out" do
  given(:user) {create :user}

  scenario "successfully", :focus, :js => true do
    visit root_path
    fill_in "email", with: user.email
    fill_in "password", with: user.password
    click_on "login"
    click_on "logout"

    expect(page).to have_css ".nav-login"
  end
end
