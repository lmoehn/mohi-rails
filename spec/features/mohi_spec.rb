require 'spec_helper'

feature 'all things Mohi' do
  scenario 'shows a homey home page' do
    visit '/'

    expect(page).to have_content "New Prospect"
  end
end