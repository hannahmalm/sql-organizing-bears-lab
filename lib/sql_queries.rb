def selects_all_female_bears_return_name_and_age
  "SELECT bears.name, bears.age FROM bears WHERE sex='F';"
end

def selects_all_bears_names_and_orders_in_alphabetical_order
  #ORDER BY needs to come after selecting, when ordering something, specify it again
  "SELECT bears.name FROM bears ORDER BY bears.name ASC;"
end

def selects_all_bears_names_and_ages_that_are_alive_and_order_youngest_to_oldest
  #WHERE comes before ORDER BY
  #Order by age since you are looking for youngest to oldest
  #alive is a boolean
  "SELECT bears.name, bears.age FROM bears WHERE alive=1 ORDER BY bears.age ASC;"
end

def selects_oldest_bear_and_returns_name_and_age
  #find the name of the oldest bear
  #order by age DESC
  #to find the oldest, limit it to 1 - if you wanted to find top five limit to 5
  "SELECT bears.name, bears.age FROM bears ORDER BY bears.age DESC LIMIT 1;"
end

def select_youngest_bear_and_returns_name_and_age
  #same as above but the youngest would be ascending (aka 0-100)
  "SELECT bears.name, bears.age FROM bears ORDER BY bears.age ASC LIMIT 1;"
end

def selects_most_prominent_color_and_returns_with_count
  #find the color that happens most often
  #return the count of the color - count comes before FROM
  #Group by is used to group a specific column
  #Order by the count that we used earlier to count the colors
  "SELECT bears.color, COUNT(bears.color) FROM bears GROUP BY bears.color ORDER BY COUNT(*) DESC LIMIT 1"
end

def counts_number_of_bears_with_goofy_temperaments
  #count comes before From 
  #you dont have to write bears.temperament, COUNT bears.temperament becasuse this is only looking for a count
  "SELECT COUNT(bears.temperament) FROM bears WHERE bears.temperament='goofy';"
end

def selects_bear_that_killed_Tim
#select everything from the bears table
#filter on everything to see which bear is missing a name
  "SELECT * FROM bears WHERE bears.name IS NULL;"
end
