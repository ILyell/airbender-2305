class AvatarService

    def conn
        Faraday.new(url: 'https://last-airbender-api.fly.dev')
    end

    def get_url(url)
        response = conn.get(url)
        JSON.parse(response.body, symbolize_names: true)
    end

    def get_nation_members(nation)
        get_url("/api/v1/characters?affiliation=#{nation}&perPage=100&page=1")
    end
end