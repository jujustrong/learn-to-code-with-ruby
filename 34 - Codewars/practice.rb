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

#---------------------------------------------------------------------------------

def positive_sum(arr)   # You get an array of numbers, return the sum of all positive ones. 0 if arr is empty
  count = 0
  arr.each do |i|
    if i > 0
      count += i
    else
      next
    end
  end
  count
end

# Alternate Solution

def positive_sum(arr)
  arr.select(&:positive?).sum
end

#---------------------------------------------------------------------------------