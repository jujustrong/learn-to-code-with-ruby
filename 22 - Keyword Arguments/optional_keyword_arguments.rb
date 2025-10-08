def sum(a: 1, b: 1)   #if i wanted there to be a default or fallback value for a or b if there isnt on provided, you use a: 1, b: 1
  a + b 
end

p sum
p sum(a: 5)
p sum(b: 3)
p sum(a: 2, b: 8)
p sum(b: 8, a: 2)     # Order does NOT matter since we are using keywords