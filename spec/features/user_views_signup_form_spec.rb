require 'spec_helper'

feature 'User views signup form' do
  scenario 'successfully' do
  visit root_path
    expect(page).to have_content "Enjoy a delicious season of high quality organic produce."
  end
end
