require 'spec_helper'

feature 'Visitor browses site' do
  scenario 'visits home page' do
    visit root_path

    expect(page).to have_css('h1', 'High Voltage Demo')
  end

  scenario 'vist the about us page' do
    visit root_path

    click_link 'About Us'

    expect(page).to have_css('h1', 'About Us')
  end
end
