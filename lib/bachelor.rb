def get_first_name_of_season_winner(data, season)
  data.each do |seasons, hash|
    if seasons.to_s == season
      data[seasons].each do |keys,values|
        if keys["status"] == "Winner"
          winner = keys["name"].split(' ')[0]
          return winner
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, hash|
    hash.each do |k|
      if k["occupation"] == occupation
        return k["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0;
  data.each do |seasons, hash|
    hash.each do |k|
      if k["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |seasons, hash|
    hash.each do |k|
      if k["hometown"] == hometown
        return k["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_total= 0;
  counter = 0;
  data[season].each do |hash|
    age_total += (hash["age"]).to_i
    counter += 1
  end
  (age_total / counter.to_f).round(0)
end
