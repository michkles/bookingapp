require 'rails_helper'

RSpec.describe 'home_page', type: :system do
  describe 'home page' do
    it 'shows the right content' do
      visit home_index_path
      expect(page).to have_content('Bookings')
    end

    it 'redirects to home index pgae' do
        visit '/'
        expect(page).to have_content('Bookings')
      end
  end
end