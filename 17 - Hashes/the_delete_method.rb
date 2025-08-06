# delete - remove a key-value pair by its key

superheros = {
  spiderman: "Peter Parker", 
  superman: "Clark Kent", 
  batman: "Bruce Wayne"
}

p superheros

superheros.delete(:spiderman) # this mutates the original hash. It also returns the value that we have deleted
p superheros

real_name = superheros.delete(:superman)
p real_name