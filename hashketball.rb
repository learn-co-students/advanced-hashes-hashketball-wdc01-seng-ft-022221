
require "pry"

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
  (game_hash[:home][:players]).concat(game_hash[:away][:players])
  end
players

def num_points_scored(player_name)
players.each do |inner_key|
  if inner_key[:player_name] == player_name
    return inner_key[:points]
  end
end
end
num_points_scored("Kemba Walker")


def shoe_size(player_name)
    players.each do |inner_key|
      if inner_key[:player_name] == player_name
        return inner_key[:shoe]
      end
  end
end
shoe_size("Bismack Biyombo")

def team_colors(team_name)
game_hash.each do |key,value|
  if team_name == value[:team_name]
    return value[:colors]
  end
end
end
team_colors("Charlotte Hornets")

def team_names
p [game_hash[:home][:team_name], game_hash[:away][:team_name]]
end
team_names

def player_numbers(team_name)
  new_array = []
  game_hash.each do |key,value|
    value[:players].each do |inner_key|
      if value[:team_name] == team_name
        a = inner_key[:number]
        new_array << a
      end
end
end
new_array.sort!
end
player_numbers("Brooklyn Nets")

def player_stats(player_name)
players.each do |inner_key|
  if inner_key[:player_name] == player_name
    p inner_key
  end
end
end
player_stats("Reggie Evans")

def big_shoe_rebounds
  players.each do |inner_value|
      if inner_value[:shoe] > 18
        return inner_value[:rebounds]
      end
  end
end
big_shoe_rebounds
