require 'pry'

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

#def players_info
  #player_dets == []
  #game_hash.each do |team , team_dets|
    #binding.pry
    #team_dets[:players].map do |dets|
        #dets << player_dets
    #end
  #end 
#end

#INPUT: game_hash, specific player's name as argument
#OUTPUT: point scored for specific player 

def num_points_scored(player)
  #iterate through game_hash to player_name
   game_hash.each do |team , team_dets|
    team_dets[:players].each do |dets|
      dets.each do |key, value|
        if dets[:player_name] == player
          return dets[:points]
        end
      end 
    end
  end 
end

def shoe_size(player)
   game_hash.each do |team , team_dets|
    team_dets[:players].each do |dets|
      dets.each do |key, value|
        if dets[:player_name] == player
          return dets[:shoe]
        end
      end 
    end
  end  
end

def team_colors(team_name)
  game_hash.each do |team, team_dets|
    #binding.pry
    if team_dets[:team_name] == team_name
      return team_dets[:colors]
    end
  end
end

def team_names
  names_array = []
  game_hash.each do |team, team_dets|
    names_array << team_dets[:team_name]
  end
  names_array
end 

def player_numbers(team_name)
  jersey_numbers = []
  game_hash.each do |team, team_dets|
    if team_dets[:team_name] == team_name
      team_dets[:players].each do |player_dets, value|
        jersey_numbers << player_dets[:number]
      end 
    end
  end
  jersey_numbers
end

def player_stats(player_name)
  game_hash.each do |team, team_dets|
    team_dets[:players].each do |player_dets|
      if player_dets[:player_name] == player_name
        return player_dets
      end
    end
  end 
end 

def big_shoe_rebounds
  largest_shoe = 0 
  rebounds = 0
  #find player with largest shoe 
    game_hash.each do |team, team_dets|
        team_dets[:players].each do |player_dets|
          if player_dets[:shoe] > largest_shoe
          largest_shoe = player_dets[:shoe]
        #return that player's number of rebounds
          rebounds = player_dets[:rebounds]
      end 
    end
  end 
 rebounds 
end