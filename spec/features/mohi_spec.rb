require 'spec_helper'

feature 'Prospects' do
  scenario 'Prospect enters intitial information' do
    visit '/'

    expect(page).to have_content 'New Prospect'
    click_link 'Learn More'
    expect(page).to have_content 'Prospect Information'
  end
end