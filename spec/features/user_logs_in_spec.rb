require 'rails_helper'

feature "user logs in" do
  let(:user) {create(:user)}

  scenario "successfully", :js => true do
    visit root_path
    fill_in "email", with: user.email
    fill_in "password", with: user.password_digest
    click_on "login"

    expect(page).to have_content user.first_name
  end
end