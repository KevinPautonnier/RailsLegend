require 'rest-client'
class Player

  attr_accessor :name, :region, :key

  def initialize(name, region)
    @key = "RGAPI-d18e1abd-4e19-4453-8249-e10675de1031"
    @name = name
    @region = region

    response = RestClient.get "https://#{region}.api.pvp.net/api/lol/#{region}/v1.4/summoner/by-name/#{name}?api_key=#{key}"
    print response.class


    player_id = " "
    response2 = RestClient.get "https://#{region}.api.pvp.net/api/lol/#{region}/v2.2/matchlist/by-summoner/#{player_id}?api_key=#{key}"




    #id = response.print
    #@profil_icon_id
    #@level
    #@best_champions

  end

end

Player.new("Matratio", "euw")