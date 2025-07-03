# map/collect - create a new array by performing a consistent operation on
# all elements from an original array

p [1, 2, 3, 4, 5].map { |x| x**2  }

birds = ["eagle", "sparrow", "pigeon", "hawk", "penguin", "crow", "raven", "owl"]

p birds.map { |x| x.length  }

p birds.collect { |x| x.length  }

p birds.map { |bird| bird.upcase  }