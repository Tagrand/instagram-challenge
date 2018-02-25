require 'rails_helper'

feature 'login' do
    background do
      visit '/'
      click_link 'Sign up'
      fill_in "user[user_name]", with: 'RomanSlayer'
      fill_in 'Email', with: 'roman_slayer@gmail.com'
      fill_in "user[password]", with: 'killtheromans'
      fill_in "user[password_confirmation]", with: 'killtheromans'
      click_button 'Sign up'
    end

   scenario 'Lets me signup' do
      expect(page).to have_content 'Successfully signed up to the best website ever! Good choice :)'
      expect(page).to have_content 'The Marvelous Picts Feed!'
   end

   scenario 'lets me logout' do
     click_link 'Logout'
     expect(page).to have_content 'You\'ve logged out, see you again for more Pictogram soon!'
     expect(page).not_to have_content 'Logout'
   end

   scenario 'I can login to user account' do
      click_link 'Logout'
   end


end
