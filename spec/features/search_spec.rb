require 'rails_helper'

RSpec.describe "Search Page", type: :feature do
    describe 'Search for Fire Nation Memebers' do
        it 'Shows the total number of people who live in the fire nation' do
            visit search_path(nation: "fire+nation")

            expect(page).to have_content("Total Residents: 100")
        end

        it 'Has a list with detail info for the first 25 memebrs of the fire nation' do
            visit search_path(nation: "fire+nation")

            expect(page).to have_css('member', count: 25)

            within 'member' do
                expect(page).to have_css('name')
                expect(page).to have_css('photo')
                expect(page).to have_css('allies')
                expect(page).to have_css('enemies')
                expect(page).to have_css('affiliations')
            end
        end
    end
end