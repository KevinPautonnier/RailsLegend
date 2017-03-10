class Player

  attr_accessor :name, :region
  attr_reader :id, :data, :historic_data, :historic, :nb_ranked

  def initialize(name, region)
    @name = name
    @region = region

    @data = Api.get_player(region, name)
    @id = @data[name]["id"]

    @historic_data = Api.get_historic(region, @id)

    @historic = Array.new

    @nb_ranked = 0

    @historic_data["matches"].each do |data|
      @nb_ranked += 1
      game_data = Array.new
      game_data.push("Région" => data["region"])
      game_data.push("Queue" => data["queue"])
      game_data.push("Saison" => data["season"])
      game_data.push("Date" => Time.at(data["timestamp"]/1000))
      game_data.push("Voie" => data["lane"])
      game_data.push("Rôle" => data["role"])
      game_data.push("ID" => data["matchId"])

      @historic.push(game_data)
    end

    #id = response.print
    #@profil_icon_id
    #@level
    #@best_champions

  end

  def self.search(name, region)
    [Player.new(name, region)]
  end

end
