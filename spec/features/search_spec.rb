require 'rails_helper'

RSpec.describe "Search Page", type: :feature do
    describe 'Search for Fire Nation Memebers' do
        it 'Shows the total number of people who live in the fire nation' do
            visit search_path(nation: "fire+nation")

            expect(page).to have_content("Total Residents: 97")
        end

        it 'Has a list with detail info for the first 25 memebrs of the fire nation' do
            visit search_path(nation: "fire+nation")

            expect(page).to have_css('#member', count: 25)
            within first '#member' do
                expect(page).to have_content('Name:')
                # expect(page).to have_content('photo')
                expect(page).to have_content('Allies: ')
                expect(page).to have_content('Enemies: ')
                expect(page).to have_content('Affiliation: ')
            end
        end
    end
end