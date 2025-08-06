 # compact method - removes all nil values from an array
 # this method comes with a BANG method to change the original array
 
 p [1, 2, nil, 3.14, false, nil].compact
 p [1, 2, 3].compact
 p [].compact