def append_5(elements)
  elements << 5
end

values = [1, 2, 3, 4]
append_5(values)

def uppercase(text)
  text.upcase!
end

name = "Boris"
uppercase(name)
p name