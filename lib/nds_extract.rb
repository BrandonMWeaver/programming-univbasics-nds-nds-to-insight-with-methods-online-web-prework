require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  
  i = 0
  while i < directors_database.size do
    total = 0
    name = directors_database[i][:name]
    
    j = 0
    while j < directors_database[i][:name][j] do
      total += directors_database[i][:name][j][:movies][:worldwide_grosses]
      j += 1
    end
    i += 1
  end
  nil
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
end
