require 'rest-client'
require 'json'
require "./api"

class Game
  attr_accessor :match_id, :region, :key

  def initialize(match_id, region)
    @key = "RGAPI-d18e1abd-4e19-4453-8249-e10675de1031"
    @match_id = match_id.downcase!
    @region = region.downcase!
  end
end