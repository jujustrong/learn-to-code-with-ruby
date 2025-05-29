def paperwork(n, m)
  return 0 if n <= 0 || m <= 0
  n * m
end

# Alternate Solution

def paperwork(n, m)
  n >= 0 && m >= 0 ? n * m : 0
end

#---------------------------------------------------------------------------------

def past(h, m, s)
  ((m * 60) + (h * 3600) + s) * 1000
end

puts past(1, 1, 1)