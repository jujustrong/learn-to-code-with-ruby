# Column A, Column B
# Row Value, Row Value

spreadsheet = [
  [ "Student", "Class", "Grade" ], 
  [ "Sally", "Computer Science", 95 ],
  [ "Ingrid", "Physics", 45 ]
]

p spreadsheet

first_row, second_row, third_row = spreadsheet # Unpacking the array and assigning each row to a variable

p first_row
p second_row
p third_row