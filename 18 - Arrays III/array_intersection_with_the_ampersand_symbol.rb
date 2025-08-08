# & symbol - combine multiple arrays, keep elements that are found in both

p [1, 1, 2, 3, 4, 5] & [1, 4, 5, 8, 9]
p [1, 1, 2, 3, 4, 5].&([1, 4, 5, 8, 9])
p [1, 1, 2, 3, 4, 5] & [1, 4, 5, 8, 9] & [ 4, 5, 10, 11]

# has to be found in each array to be included in the final output