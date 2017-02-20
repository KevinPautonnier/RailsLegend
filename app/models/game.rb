require "./api"

class Game
  attr_accessor :match_id, :region

  def initialize(match_id, region)
    @match_id = match_id.downcase!
    @region = region.downcase!
  end
end