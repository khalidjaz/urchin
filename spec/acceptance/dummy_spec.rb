require 'spec_helper'

feature 'Dummy feature' do
  scenario 'dummy scenario', :js => true do
    visit '/'
  end
end

feature 'Sign Up' do
  scenario 'Sign up scenario', :js => true do
    visit '/signup'
    fill_in 'Name', :with => 'samer'
    fill_in 'Login', :with => 'samer'
    fill_in 'Email', :with => 'samer@samer.com'
    fill_in 'Sender', :with => '009988776655'
    fill_in 'Password', :with => '123456'
    fill_in 'user_password_confirmation', :with => '123456'
    click_on 'Sign Up'
    page.should have_content('Registration successful.')
  end
end

feature 'Login' do
  scenario 'Login scenario', :js => true do
    visit '/login'
    fill_in 'Login', :with => 'samer'
    fill_in 'Password', :with => '123456'
    click_on 'Sign In'
    page.should have_content('Successfully logged in.')
  end
end
