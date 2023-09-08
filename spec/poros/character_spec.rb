require 'rails_helper'

RSpec.describe Character do
    it 'Exist and holds attributes' do
        attributes_1 =  { name: "Timmy",
                        photo: "image_url",
                        allies: "The Red Basin Nation",
                        enemies: "Everyone lmao",
                        affiliation: "The Red Basin Nation Army"
                        }



        char_1 = Character.new(attributes_1)
        
        expect(char_1).to be_a(Character)
        expect(char_1.name).to eq("Timmy")
        expect(char_1.photo).to eq("image_url")
        expect(char_1.allies).to eq("The Red Basin Nation")
        expect(char_1.enemies).to eq("Everyone lmao")
        expect(char_1.affiliation).to eq("The Red Basin Nation Army")

        attributes_2 =  { name: "Timmy",
            allies: "The Red Basin Nation",
            enemies: "Everyone lmao",
            affiliation: "The Red Basin Nation Army"
            }

        char_2 = Character.new(attributes_2)
        
        expect(char_2).to be_a(Character)
        expect(char_2.name).to eq("Timmy")
        expect(char_2.photo).to eq(nil)
        expect(char_2.allies).to eq("The Red Basin Nation")
        expect(char_2.enemies).to eq("Everyone lmao")
        expect(char_2.affiliation).to eq("The Red Basin Nation Army")
    end
end