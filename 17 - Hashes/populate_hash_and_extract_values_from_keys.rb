# Hash key-value assignment syntax
# key => value
# hash rocket
# A key cannot exist without a value and vice-versa

nfl_roster_salaries = {
  "Patrick Mahomes" => 50_000_000, 
  "Josh Allen" => 25_000_000, 
  "Joe Burrow" => 12_000_000
}

p nfl_roster_salaries

nfl_roster = {
  "Kansas City Chiefs" => ["Patrick Mahomes", "Travis Kelce"], 
  "Los Angeles Rams" => ["Matthew Stafford", "Aaron Donald", "Cooper Kupp"], 
  "San Francisco 49ers" => ["Brock Purdy", "Christian McCaffery"]
}

p nfl_roster

puts

p nfl_roster_salaries["Patrick Mahomes"] # output is the value for this specific key
p nfl_roster_salaries["Joe Burrow"]
p nfl_roster["Los Angeles Rams"]
p nfl_roster_salaries["Tom Brady"] # key has to exist and be accurate (case) or else nil

puts 

p nfl_roster_salaries.fetch("Josh Allen")
p nfl_roster_salaries.fetch("Josh Nonsense", 0) # If the key does not exist, provide a fallback value (0)