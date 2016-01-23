# Write your code here!
def game_hash
  {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :num_points_scored => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
          },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :num_points_scored => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
          },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :num_points_scored => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
          },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :num_points_scored => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
          },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :num_points_scored => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
          },
        }
      },
    :away => {

      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :num_points_scored => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
          },
        "Bismak Biyombo" => {
          :number => 0,
          :shoe => 16,
          :num_points_scored => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
          },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :num_points_scored => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
          },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :num_points_scored => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
          },
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :num_points_scored => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
          },

        }

      }

    }

end

def num_points_scored(name)
  array = []
  game_hash.each do |location, team_data|
    team_data.each do |team_attribute, team_attribute_data|
      if team_attribute == :players
        team_attribute_data.each do |player, player_stat|
            if player == name
              player_stat.each do |stat, stat_data|
                if stat == :num_points_scored
                  array << stat_data
              end
            end
          end
        end
      end
    end
  end
  array.join.to_i
end

def shoe_size(name)
  array = []
  game_hash.each do |location, team_data|
    team_data.each do |team_attribute, team_attribute_data|
      if team_attribute == :players
        team_attribute_data.each do |player, player_stat|
            if player == name
              player_stat.each do |stat, stat_data|
                if stat == :shoe
                  array << stat_data
              end
            end
          end
        end
      end
    end
  end
  array.join.to_i
end

def team_colors(team)
 array = []
  game_hash.each do |location, team_data|
    team_data.each do |team_attribute, team_attribute_data|
      if team_attribute == :colors
        team_attribute_data.each do |color|
                  array << color
                end
              end
            end
          end
array
end

def team_names
  array = []
  game_hash.each do |location, team_data|
    team_data.each do |team_attribute, team_attribute_data|
      if team_attribute == :team_name
          array << team_attribute_data
                end
              end
            end
array
end

def player_numbers(team)
  array = []
  game_hash.each do |location, team_data|
    team_data.each do |team_attribute, team_attribute_data|
      if team_attribute == :team_name
        if team_attribute_data == team
      team_attribute_data. each do |