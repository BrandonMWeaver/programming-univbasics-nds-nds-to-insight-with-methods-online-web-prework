require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  pp directors_database
  i = 0
  while i < directors_database.size do
    total = 0
    name = directors_database[i][:name]
    
    j = 0
    while j < directors_database[i][:movies].size do
      total += directors_database[i][:movies][j][:worldwide_gross]
      j += 1
    end
    i += 1
  end
  return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
end
