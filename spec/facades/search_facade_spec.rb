require 'rails_helper'

RSpec.describe SearchFacade do
    xit 'returns 25 character objects' do
        params = { nation: 'fire+nation' }
        facade = SearchFacade.new(params)

        members = facade.nation_members

        expect(members.count).to eq(25)
        
        members.each do |member|
            expect(member).to be_a Character
        end
    end
end