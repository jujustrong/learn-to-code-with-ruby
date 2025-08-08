# sample method - extract one or more random elements from an array
# If you give an argument of more than the array number, it will not give duplicates. It will just give the max amount.

flavors = ["Chocolate", "Vanilla", "Strawberry", "Cookies and Cream"]

p flavors.sample
puts 

p flavors.sample(1)
p flavors.sample(2)
p flavors.sample(3)
p flavors.sample(4)