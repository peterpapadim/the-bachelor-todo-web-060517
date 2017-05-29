require "pry"

def get_first_name_of_season_winner(data, season)
  winner = ""
  data.each do |which_season, contestant|
    if which_season == season
      contestant.each do |info|
      winner = info["name"].split.first if info["status"] == "Winner"
      end
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  contestant_name = ""
  data.each do |which_season, contestant|
    contestant.each do |info|
      contestant_name = info["name"] if info["occupation"] == occupation
    end
  end
  contestant_name
end

def count_contestants_by_hometown(data, hometown)
  home_count = 0
  data.each do |which_season, contestant|
    contestant.each do |info|
      home_count += 1 if info["hometown"] == hometown
    end
  end
  home_count
end

def get_occupation(data, hometown)
  occup = ""
  data.each do |which_season, contestant|
    contestant.each do |info|
      if info["hometown"] == hometown
        occup = info["occupation"]
        break
      end
    end
  end
  occup
end

def get_average_age_for_season(data, season)
  ages_arr = []
  data.each do |which_season, contestant|
    if which_season == season
      contestant.each do |info|
        ages_arr << info["age"].to_i
      end
    end
  end
  sum = 0
  ages_arr.each { |num| sum += num }
  (sum / ages_arr.size.to_f).round
end
