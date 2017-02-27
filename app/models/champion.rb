require "./api"

class Champion

  attr_accessor :champion_id, :region, :name, :title

  def initialize(champion_id, region)
    @champ_id = champion_id
    @region = region.downcase!

    champion_data = get_champion(region, champion_id)

    @name = champion_data["name"]
    @title = champion_data["title"]

    print name + "\n"
    print "#{@title} "
  end
end

Champion.new(81, "euw")