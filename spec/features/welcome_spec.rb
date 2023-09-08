require 'rails_helper'

RSpec.describe "Welcome Page", type: :feature do
    describe 'search for memebers' do
        it 'Can search for fire memebers' do
            visit root_path

            page.select 'Fire Nation', from: 'nation'

            click_button "Search For Members"

            expect(current_route).to eq(search_path)
        end
    end
end