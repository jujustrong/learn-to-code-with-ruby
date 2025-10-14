integer_methods =  5.methods.sort
float_methods = 3.14.methods.sort

p float_methods & integer_methods # Will return the methods or objects in both arrays that are shared by both arrays

p float_methods - integer_methods # Will show what methods are in the float_methods and NOT in the integer_methods array

p integer_methods - float_methods # Vice Versa