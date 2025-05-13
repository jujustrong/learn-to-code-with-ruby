 # strings are mutable
 # mutable - capable of change
 

thing = "rocket ship"

thing[0] = "p"
puts thing

thing[1] = "a"
puts thing

thing[9] = "o"
puts thing

fact = "I love blueberry pie" #raspberry
fact[7, 4] = "rasp"           #The number of characters that you are using to replace the selection does NOT matter
puts fact