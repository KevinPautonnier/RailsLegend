@key = "RGAPI-d18e1abd-4e19-4453-8249-e10675de1031"

def get_champion
  response = RestClient.get "https://#{region}.api.pvp.net/api/lol/#{region}/v1.4/summoner/by-name/#{name}?api_key=#{key}"
  JSON.parse response
end

def get_player(region, name)
  response = RestClient.get "https://#{region}.api.pvp.net/api/lol/#{region}/v1.4/summoner/by-name/#{name}?api_key=#{key}"
  JSON.parse response
end

def get_historic(region, player_id)
  response = RestClient.get "https://#{region}.api.pvp.net/api/lol/#{region}/v2.2/matchlist/by-summoner/#{player_id}?api_key=#{key}"
  JSON.parse response
end

def get_game(region, match_id)
  response = RestClient.get "https://#{region}.api.pvp.net/api/lol/#{region}/v2.2/match/#{match_id}?api_key=#{key}"
  JSON.pars response
end