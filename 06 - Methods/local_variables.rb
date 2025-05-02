action_star = "Brad Pitt"

def film_movie
  action_star = "Tom Hardy"
  puts action_star
end

puts action_star # This will raise an error because action_star is a local variable defined inside the method film_movie.
                 # The variable action_star is local to the method film_movie and cannot be accessed outside of it.


puts action_star # This will print "Brad Pitt" because it is the value of the global variable action_star.