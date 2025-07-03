# include? method - check for the inclusion within an array

p "action".include?("act")

movie_genres = ["comedy", "action", "drama", "horror"]

p movie_genres.include?("drama")
p movie_genres.include?("romance")
p movie_genres.include?("Drama")      # watch for case sensitivity