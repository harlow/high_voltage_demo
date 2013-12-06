require 'spec_helper'

feature 'Visitor browses site' do
  scenario 'visits home page' do
    visit root_path

    expect(page).to have_css('h1', 'High Voltage Demo')
  end
end
