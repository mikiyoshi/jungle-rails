require 'rails_helper'

RSpec.feature "UserLogins", type: :feature, js: true do

  scenario "A user logged in" do
    # visit the signup to create user, cos we don't have user database
    visit '/signup'
    # find a product listing name="user[first_name]"
    fill_in 'user[first_name]', with: 'first_name'
    fill_in 'user[last_name]', with: 'last_name'
    fill_in 'user[email]', with: 'test2@test.com'
    fill_in 'user[password]', with: 'password'
    fill_in 'user[password_confirmation]', with: 'password'
    click_on 'Submit'
    # save new user and logout
    visit '/logout'
    # login using new user account
    visit '/login'
    # find a product listing name="email"
    fill_in 'email', with: 'test2@test.com'
    # find a product listing name="password"
    fill_in 'password', with: 'password'
    click_on 'Login'
    page.save_screenshot
  end
end
