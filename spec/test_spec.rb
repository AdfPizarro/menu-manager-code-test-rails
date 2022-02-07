require 'rails_helper'


RSpec.describe 'Main page', type: :system do
  describe 'index page' do
    it 'shows the main page' do
      visit root_path
      expect(page).to have_content('Menu')
    end
  end
end