require 'rest-client'
require 'json'


class Api

  $key = "RGAPI-d18e1abd-4e19-4453-8249-e10675de1031"

  class << self
    def get_champion(region, id)
      response = RestClient.get "https://global.api.pvp.net/api/lol/static-data/#{region}/v1.2/champion/#{id}?locale=fr_FR&champData=all&api_key=#{$key}"
      JSON.parse response
    end

    def get_player(region, name)
      response = RestClient.get "https://#{region}.api.pvp.net/api/lol/#{region}/v1.4/summoner/by-name/#{name}?api_key=#{$key}"
      JSON.parse response
    end

    def get_historic(region, player_id)
      response = RestClient.get "https://#{region}.api.pvp.net/api/lol/#{region}/v2.2/matchlist/by-summoner/#{player_id}?api_key=#{$key}"
      JSON.parse response
    end

    def get_game(region, match_id)
      response = RestClient.get "https://#{region}.api.pvp.net/api/lol/#{region}/v2.2/match/#{match_id}?api_key=#{$key}"
      JSON.parse response
    end

    def get_static_champ_data
      response = RestClient.get "http://ddragon.leagueoflegends.com/cdn/6.24.1/data/fr_FR/champion.json"
      JSON.parse response
    end

    def find_champ(id)
      data = Api.get_static_champ_data

      data["data"].each do |champ|
        if champ[1]["key"] == id.to_s
          return champ[1]["id"]
        end
      end
    end
  end
end