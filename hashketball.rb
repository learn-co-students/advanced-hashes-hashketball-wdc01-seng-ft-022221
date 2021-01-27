require 'pry'

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

# Write code here

#helper functions or something

def player_team(name)
  team = nil
  game_hash[:home][:players].each do |element|
    if element.values.include?(name)
      team = :home
    end 
  end
  game_hash[:away][:players].each do |element|
    if element.values.include?(name)
      team = :away
    end 
  end 
  team
end 


def player_index(name)
  index = nil
  game_hash[:home][:players].each_with_index do |element, n|
    if element.values.include?(name)
      index = n
    end 
  end
  game_hash[:away][:players].each_with_index do |element, n|
    if element.values.include?(name)
      index = n
    end 
  end 
  index
end 

#methods to pass

def num_points_scored(name)
  team = player_team(name)
  index = player_index(name)
  game_hash[team][:players][index][:points]
end

def shoe_size(name)
  team = player_team(name)
  index = player_index(name)
  game_hash[team][:players][index][:shoe]
end 

def team_colors (team)
  if game_hash[:home][:team_name] == team 
    game_hash[:home][:colors]
  elsif game_hash[:away][:team_name] == team 
    game_hash[:away][:colors]
  else
    puts "Team not found"
  end 
end 


def team_names
  teams = []
  game_hash.each_value do |value|
    teams << value[:team_name]
  end 
  teams
end 

def player_numbers (team)
  if game_hash[:home][:team_name] == team 
    game_hash[:home][:players].map {|n| n[:number]}
  elsif game_hash[:away][:team_name] == team 
    game_hash[:away][:players].map {|n| n[:number]}
  else
    puts "Team not found"
  end 
end 

def player_stats (name)
  team = player_team(name)
  index = player_index(name)
  game_hash[team][:players][index]
end 

def big_shoe_rebounds
  rebounds = nil
  shoe_sizes = []
  game_hash[:home][:players].map {|n| shoe_sizes << n[:shoe]}
  game_hash[:away][:players].map {|n| shoe_sizes << n[:shoe]}
  
  game_hash[:home][:players].each do |element|
    if element[:shoe] == shoe_sizes.max
      rebounds = element[:rebounds]
    end 
  end
  game_hash[:away][:players].each do |element|
    if element[:shoe] == shoe_sizes.max
      rebounds = element[:rebounds]
    end 
  end 
  rebounds
end 

#bonus methods

def most_points_scored 
  
end 

def winning_team
  
end

def player_with_longest_name
  
end 

def long_name_steals_a_ton?
  
end 