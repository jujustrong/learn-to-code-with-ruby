# Define a Cookie class within the file.
#
# Declare a create_cookie method that returns a Cookie object/instance
#
# Declare a multiple_cookies method that returns an array of
# two separate Cookie objects

class Cookie

  def gather_ingredients
    puts "Gathering ingredients for baking..."
  end

  def mix
    puts "Adding contents to bowl..."
    puts "Mixing dough..."
  end

  def put_in_oven
    puts "What temperature should we set the oven to? "
    temp = gets.chomp
    puts "Oven set to #{temp} degrees..."
    puts "Cookies are now in the oven..."
  end

  def eat
    puts "nom nom nom! That was a good cookie!"
  end

end

def create_cookie
  new_cookie = Cookie.new
  new_cookie
end

def multiple_cookies
  cookie1 = Cookie.new
  cookie2 = Cookie.new
  [cookie1, cookie2]
end