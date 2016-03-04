require 'rails_helper'

feature "user can sign up", :focus do
  let(:user) {create(:user)}

  scenario "successfully", :js => true do
    visit root_path
    click_on "sign-up"

    fill_in :first_name, with: user.first_name
    fill_in :last_name, with: user.last_name
    fill_in :email, with: user.email
    fill_in :birthdate, with: user.birthdate
    fill_in :password, with: user.password_digest
    fill_in "user_days_of_7_vig", with: user.days_of_7_vig
    fill_in "user_mins_vig_per_day", with: user.mins_vig_per_day
    fill_in "user_days_of_7_mod", with: user.days_of_7_mod
    fill_in "user_mins_mod_per_day", with: user.mins_mod_per_day
    fill_in "user_days_of_7_walk", with: user.days_of_7_walk
    fill_in "user_mins_walk_per_day", with: user.mins_walk_per_day
    fill_in "user_mins_weekday_sitting", with: user.mins_weekday_sitting
    check "user_org_pa"

    click_on "sign up"

    expect(page).to have_css '.stat', text: "Days of vigorous exercise per week: #{user.days_of_7_vig}"
  end
end