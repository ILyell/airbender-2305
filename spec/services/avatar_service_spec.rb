require 'rails_helper'

RSpec.describe AvatarService, type: :service do
    describe 'instance methods' do
        it 'returns JSON of characters by nation' do
            chars = AvatarService.new.get_nation_members("fire+nation")

            expect(chars.count).to eq(97)

            chars.each do |char| 
                expect(char).to have_key(:name)
                expect(char).to have_key(:_id)
                expect(char).to have_key(:allies)
                expect(char).to have_key(:enemies)
                expect(char).to have_key(:affiliation)
            end
        end
    end
end