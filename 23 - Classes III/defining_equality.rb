# override the == instance method to define object equality
# Without a concrete way to establish equality, Ruby will try its hardest to say each instance of an object-
# even if it is the same object, is NOT equal.

class IceCream
  attr_reader :flavor, :calories, :price
  
  def initialize(flavor:, calories:, price:)
    @flavor = flavor
    @calories = calories
    @price = price
  end

  def ==(other)
    calories == other.calories && price == other.price
  end

end

cookies_and_cream = IceCream.new(flavor: "Cookies and Cream", calories: 300, price: 3.99)
rum_raisin = IceCream.new(flavor: "Rum Raisin", calories: 300, price: 3.99)
mint = IceCream.new(flavor: "Mint", calories: 200, price: 1.99)

p cookies_and_cream == rum_raisin
p cookies_and_cream == mint