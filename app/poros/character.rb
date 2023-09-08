class Character

    attr_reader :name,
                :photo,
                :allies,
                :enemies,
                :affiliation

    def initialize(char_hash)
        @name = char_hash[:name]
        @photo = char_hash[:photo]
        @allies = char_hash[:allies]
        @enemies = char_hash[:enemies]
        @affiliation = char_hash[:affiliation]
        
    end
end