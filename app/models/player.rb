class Player

  attr_accessor :name, :region
  attr_reader :id, :data, :historic_data, :historic, :nb_ranked

  def initialize(name, region)
    @name = name
    name.downcase!
    @region = region

    @data = Api.get_player(region, name)

    @id = @data[name]["id"]

    @historic_data = Api.get_historic(region, @id)

    @historic = Array.new

    @nb_ranked = 0

    @historic_data["matches"].each do |data|
      @nb_ranked += 1
      champ_name = Api.find_champ(data["champion"])
      game_data = Array.new
      game_data.push("Region" => data["region"])
      game_data.push("Queue" => data["queue"])
      game_data.push("Season" => data["season"])
      game_data.push("Date" => Time.at(data["timestamp"]/1000))
      game_data.push("Lane" => data["lane"])
      game_data.push("ChampionID" => data["champion"])
      game_data.push("Role" => data["role"])
      game_data.push("MatchID" => data["matchId"])
      game_data.push("ChampName" => champ_name)
      game_data.push("Image" => "http://ddragon.leagueoflegends.com/cdn/img/champion/loading/#{champ_name}_0.jpg")

      @historic.push(game_data)
    end
  end

  def self.search(name, region)
    [Player.new(name, region)]
  end


end
