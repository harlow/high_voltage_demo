require 'spec_helper'

feature 'Visitor submits inquiry', js: true do
  scenario 'valid contact info' do
    visit root_path
    click_link 'Contact Us'

    submit_inquiry valid_contact_info

    expect(page).to have_css('h2', 'Thank you for contacting us!')
  end

  scenario 'invalid contact info' do
    visit root_path
    click_link 'Contact Us'

    submit_inquiry invalid_contact_info

    expect(page).to have_css('.error', "can't be blank")
  end

  def submit_inquiry(options = {})
    fill_in 'Name', with: options[:name]
    fill_in 'Email', with: options[:email]
    fill_in 'Comments', with: options[:comments]
    click_button 'Submit'
  end

  def valid_contact_info(options = {})
    {
      comments: 'I love scotch. Scotchy, scotch, scotch. Here it goes down, down into my belly...',
      email: 'baxter_rules@channel4news.net',
      name: 'Ron Burgundy',
    }.merge(options)
  end

  def invalid_contact_info
    valid_contact_info(name: '')
  end
end
