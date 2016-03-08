require 'rails_helper'

feature "user logs in" do
  given(:user) {create :user}

  scenario "successfully", :js => true do
    visit root_path
    fill_in "email", with: user.email
    fill_in "password", with: user.password
    click_on "login"

    expect(page).to have_css '.stat', text: "Days of vigorous exercise per week: #{user.days_of_7_vig}"
  end
end