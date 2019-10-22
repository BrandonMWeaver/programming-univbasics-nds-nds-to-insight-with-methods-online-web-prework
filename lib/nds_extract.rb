require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  i = 0
  while i < directors_database.size do
    name = directors_database[i][:name]
    total = gross_for_director(directors_database[i])
    result[name] = total
    i += 1
  end
  
  return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  gross = 0
  
  i = 0
  while i < director_data[:movies].size do
    gross += director_data[:movies][i][:worldwide_gross]
    i += 1
  end
  
  return gross
end
