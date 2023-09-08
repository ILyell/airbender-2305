class Character

    attr_reader :name,
                :photo,
                :allies,
                :enemies,
                :affiliations

    def initialize(char_hash)
        @name = char_hash[:name]
        @photo = char_hash[:photo]
        @allies = char_hash[:allies]
        @enemies = char_hash[:enemies]
        @affiliations = char_hash[:affiliations]
        
    end
end