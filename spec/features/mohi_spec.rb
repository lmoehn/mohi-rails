require 'spec_helper'

feature 'Players' do
  scenario 'Prospect enters intitial information' do
    visit '/'

    expect(page).to have_content 'Player'
    click_on 'Add a Player'
    expect(page).to have_content 'Player Information'
    fill_in 'player[first_name]', with: 'Jon'
    fill_in 'player[last_name]', with: 'Conely'

    click_on 'Create Player'
    expect(page).to have_content 'Player'

  end
end