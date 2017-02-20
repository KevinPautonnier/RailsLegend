class Champion

  attr_accessor :champion_id, :@region, :name, :title

  def initialize(champion_id, region)
    @champ_id = champion_id
    @region = region

    champion_data = get_champion(region, id)

    @name = champion_data["name"]
    @title = champion_data["title"]
  end
end