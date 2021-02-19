# Write your code below game_hash
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


def all_players
  # takes the gmae hash and returns array of all players
  
  game = game_hash
  
  game_array = game[:home][:players] + game[:away][:players]
  
  return game_array
  
end

def players_on_team(name)
  
  game = game_hash
  
  if game[:home][:team_name] == name
    return game[:home][:players]
  elsif game[:away][:team_name] == name
    return game[:away][:players]
  else 
    puts "no team called #{name} found"
  end
  
  
end


def num_points_scored(name)

  players_array = all_players
  
  players_array.each do |player|
    
    if player[:player_name] == name
      return player[:points]
    end
    
  end
    
  
end


def shoe_size(name)
  
  players_array = all_players
  
  players_array.each do |player|
    
    if player[:player_name] == name
      return player[:shoe]
    end
    
  end
    
  
end

def team_colors(name)
  
  game = game_hash
  
  if game[:home][:team_name] == name
    return game[:home][:colors]
  elsif game[:away][:team_name] == name
    return game[:away][:colors]
  else 
    puts "no team called #{name} found"
  end
  
end

def team_names
  
  game = game_hash
  names = [game[:home][:team_name], game[:away][:team_name]]
  
  return names
  
end

def player_numbers(name)
  
  game = game_hash
  players = players_on_team(name)
  nums_array = []
  
    
    players.each do |var|
      nums_array << var[:number]
    end
    
    return nums_array
 
  
end


def player_stats(name)
  
  players_array = all_players
  
  players_array.each do |player|
    
    
    if player[:player_name] == name
      return player
    end
    
  end
    
  
end

def big_shoe_rebounds
  
  players_array = all_players
  current_biggest = 0
  stat_of_player = {}
  player_with_biggest = ""
  
  players_array.each do |var|
    
    if shoe_size(var[:player_name]) > current_biggest
      current_biggest = shoe_size(var[:player_name])
      player_with_biggest = var[:player_name]
    end
    
  end
    
  stat_of_player = player_stats(player_with_biggest)
    
  return stat_of_player[:rebounds]
    
  
end


def most_points_scored
  
  players_array = all_players
  highest_scorer = "" 
  highest_points = 0 
  
  players_array.each do |var|
    
    if num_points_scored(var[:player_name]) >= highest_points
      highest_scorer = var[:player_name]
      highest_points = var[:points]
    end
    
  end
  
  return highest_scorer
  
end

def winning_team
  
  game = game_hash
  home_team_score = 0 
  away_team_score = 0 
  
  game[:home][:players].each do |var|
  
    home_team_score = home_team_score + var[:points]
  
  end
  
  game[:away][:players].each do |var|
  
    away_team_score = away_team_score + var[:points]
  
  end
  
  if home_team_score > away_team_score 
    return game[:home][:team_name]
  elsif away_team_score > home_team_score
    return game[:away][:team_name]
  end
  
end

def player_with_longest_name
  
  players_array = all_players
  longest_name = ""
  
  players_array.each do |var|
    
    if var[:player_name].length > longest_name.length
      longest_name = var[:player_name]
    end
    
  end
  
  return longest_name
  
end

def long_name_steals_a_ton?
  
  players_array = all_players
  most_steals = 0 
  player_with_most_steals = ""
  
  players_array.each do |var|
    
    if var[:steals] > most_steals
      player_with_most_steals = var[:player_name]
      most_steals = var[:steals]
    end
    
  end

  return player_with_longest_name == player_with_most_steals
  
end



# Write code here
#binding.pry