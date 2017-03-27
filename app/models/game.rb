class Game
 attr_accessor :id, :region
 attr_reader :data

 def initialize(id, region)
   @id = id
   @region = region
   @data = Api.get_game(@region, @id)
   puts @data
 end

 def self.search(id, region)
  [Game.new(id, region)]
 end
end