require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  name = []
  data[season].each do |contestants|
    if contestants.value?('Winner')
      name = contestants['name'].split
    end 
  end
  name[0]
end

def get_contestant_name(data, occupation)
  # code here
<<<<<<< HEAD
  data.each do |season, contestant_arr|
    contestant_arr.each do |info_hash|
      if info_hash['occupation'] == occupation
        return info_hash['name']
      end
    end
  end
=======
  data
>>>>>>> 4cec3626c4cd7b65b5bb7ccec8b3053d5cc8f63e
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, contestant_arr|
    contestant_arr.each do |info_hash|
      # binding.pry
      if info_hash.value?(hometown)
        count += 1
      end 
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, contestant_arr|
    contestant_arr.each do |info_hash|
      if info_hash.value?(hometown)
        return info_hash['occupation']
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  avg_age = 0
  num_contestant = data[season].length
  data[season].each do |info_hash|
    age = info_hash['age']
    avg_age += age.to_f
  end
  (avg_age.fdiv(num_contestant)).round
end
