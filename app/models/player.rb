require 'rest-client'
require 'json'
require "./api"

class Player

  attr_accessor :name, :region, :key

  def initialize(name, region)
    @key = "RGAPI-d18e1abd-4e19-4453-8249-e10675de1031"
    @name = name.downcase!
    @region = region.downcase!

    player_data = get_player(region, name)
    player_id = player_data["#{name}"]["id"]
    print player_id

    print get_historic(region, player_id)


    #id = response.print
    #@profil_icon_id
    #@level
    #@best_champions

  end

end

Player.new("Matratio", "euw")