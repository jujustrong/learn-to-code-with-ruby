# Inserts an element at a specified position in the array
# The first parameter of the .insert method is the index you want to add the element to
# The second parameter is the element you want to add. You can add several elements after the second that will be added

credit_card_transactions = [19.99, 29.43, 3.87]

credit_card_transactions.insert(1, 49.99) # The first parameter is the index you want to add the element to
p credit_card_transactions

puts

credit_card_transactions.insert(0, 1.23, 4.56, 7.89)
p credit_card_transactions

puts

p [1,2,3].insert(8, 1000) # Adds nil values until it reaches the index you have specified and then adds the element.