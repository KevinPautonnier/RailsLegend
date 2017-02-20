require 'rest-client'
require 'json'
class Player

  attr_accessor :name, :region, :key

  def initialize(name, region)
    @key = "RGAPI-d18e1abd-4e19-4453-8249-e10675de1031"
    @name = name.downcase!
    @region = region.downcase!

    response = RestClient.get "https://#{region}.api.pvp.net/api/lol/#{region}/v1.4/summoner/by-name/#{name}?api_key=#{key}"

    player_data = JSON.parse response

    print player_data

    player_id = player_data["#{name}"]["id"]

    print player_id

    responsefinal = RestClient.get "https://#{region}.api.pvp.net/api/lol/#{region}/v2.2/matchlist/by-summoner/#{player_id}?api_key=#{key}"

    print responsefinal




    #id = response.print
    #@profil_icon_id
    #@level
    #@best_champions

  end

end

Player.new("Matratio", "euw")