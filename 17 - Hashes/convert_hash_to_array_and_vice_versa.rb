# to_a method - converts hash to array
# to_h method - converts array to hash

spice_girls = {
  scary: "Melanie Brown", 
  sporty: "Melanie Chisholm", 
  baby: "Emma Bunton", 
  ginger: "Geri Halliwell", 
  posh: "Victoria Beckham"
}

p spice_girls.to_a

power_rangers = [
  [:red, "Jason"], 
  [:black, "Zack"], 
  [:pink, "Kimberly"]
]

p power_rangers.to_h