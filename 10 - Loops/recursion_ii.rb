# puts "straw".reverse

# def reverse(text)
#   first_index = 0
#   last_index = text.length - 1 # 4
#   reversed_text = ""

#   while last_index >= first_index # 4 >= 0
#     reversed_text += text[last_index] # w
#     last_index -= 1
#   end

#   reversed_text
# end

def reverse(text) # straw
  return text if text.length == 1
  last_character = text[-1] # w
  remainder = text[0, text.length - 1] # text[0, 4], stra
  last_character + reverse(remainder) # w + reverse(stra)
end

# reverse(straw)
#  w + reverse(stra)
#        a + reverse(str)
#              r + reverse(st)
#                    t + s

puts reverse("straw")