#Given an integer, write a function to determine if it is a power of two.

def is_power_of_two(n)
  x = 2
  if n == 1
    return true
  elsif n <= 0
    return false
  end
  while x < n
    x *= 2
  end
  if x == n
    return true
  else
    return false
  end







