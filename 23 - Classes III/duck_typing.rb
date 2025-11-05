# If it walks, talks, and quacks like a duck, it's good enough to be a duck

class IceCream
  attr_reader :flavor, :calories, :price
  
  def initialize(flavor:, calories:, price:) #keyword args
    @flavor = flavor
    @calories = calories
    @price = price
  end

  def ==(other) #This is just comparing objects, it does NOT have to be a concrete icecream object, it just needs to have calories and price to be compared.
    calories == other.calories && price == other.price
  end

end

class Candy
  attr_reader :calories, :price

  def initialize(calories:, price:) #keyword args
    @calories = calories
    @price = price
  end

end

cookies_and_cream = IceCream.new(flavor: "Cookies and Cream", calories: 300, price: 3.99)
sour_patch_kids = Candy.new(calories: 300, price: 3.99)
snickers = Candy.new(calories: 350, price: 2.99)



p cookies_and_cream == sour_patch_kids
p cookies_and_cream == snickers