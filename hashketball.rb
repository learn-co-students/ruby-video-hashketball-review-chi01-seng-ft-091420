# Write your code below game_hash

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def players
  players_array = []
  for i in game_hash[:home][:players]
    players_array.push(i)
  end
  for i in game_hash[:away][:players]
    players_array.push(i)
  end 
  return players_array
end 

def num_points_scored(p1)
  players.each do |index|
    if index[:player_name] == p1
      return index[:points]
    end
  end
end

def shoe_size(p1)
  players.each do |index|
    if index[:player_name] == p1
      return index[:shoe]
    end
  end
end
def player_stats(p1)
  players.each do |index|
    if index[:player_name] == p1
      return index
    end
  end
end

def big_shoe_rebounds
  shoe_size_array = []
  players.each do |index|
    shoe_size_array << index[:shoe]
  end
  biggest_shoe = shoe_size_array[0]
  for i in shoe_size_array
    if i > biggest_shoe
      biggest_shoe = i
    end
  end
  player_rebound = ""
  players.each do |index|
    if index[:shoe] == biggest_shoe
      player_rebound = index[:player_name]
    end
  end
  players.each do |index|
    if index[:player_name] == player_rebound
      return index[:rebounds]
    end
  end
end 

def player_numbers(name_of_team)
  jersey_numbers = []
  players_array = []
  if name_of_team == game_hash[:home][:team_name]
    for i in game_hash[:home][:players]
      players_array.push(i)
    end
  else
    for i in game_hash[:away][:players]
      players_array.push(i)
    end
  end
  players_array.each do |index|
    jersey_numbers.push(index[:number])
  end
  return jersey_numbers
end 

def team_colors(name_of_team)
  team_colors_array = []
  if name_of_team == game_hash[:home][:team_name]
    for i in game_hash[:home][:colors]
      team_colors_array.push(i)
    end
  else
    for i in game_hash[:away][:colors]
      team_colors_array.push(i)
    end
  end
  return team_colors_array
end

def team_names
  team_name_array = []
  team_name_array.push(game_hash[:home][:team_name], game_hash[:away][:team_name])
  return team_name_array
end 
