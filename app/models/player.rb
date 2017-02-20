require 'rest-client'
require 'json'
class Player

  attr_accessor :name, :region, :key

  def initialize(name, region)
    @key = "RGAPI-d18e1abd-4e19-4453-8249-e10675de1031"
    @name = name
    @region = region

    response = RestClient.get "https://#{region}.api.pvp.net/api/lol/#{region}/v1.4/summoner/by-name/#{name}?api_key=#{key}"

    response2 = JSON.parse response


    print response2["matratio"]["id"]




    #id = response.print
    #@profil_icon_id
    #@level
    #@best_champions

  end

end

Player.new("Matratio", "euw")