require 'rails_helper'

RSpec.describe SearchFacade do
    it 'returns 25 character objects' do
        params = { nation: 'fire+nation' }
        facade = SearchFacade.new(params)

        members = facade.nation_members

        expect(members.count).to eq(25)
        
        members.each do |member|
            expect(member).to be_a Character
        end
    end

    it 'counts number of nation members' do 
        params = { nation: 'fire+nation' }
        facade = SearchFacade.new(params)

        expect(facade.member_count).to eq(97)
    end
end