# Homework Problem
# Refactor your max method to find the max
# of any number of arguments. Again, show us your tests!


def max (num, *rest)
  a = rest.sort { | x, y | y <=> x }
  if num > a[0]
    num
  elsif num < a[0]
    a[0]
  elsif num == a[0]
    "All equal"
  end
end

def max_test
  p max(3,4,5) == 5
  p max(4,3,8) == 8
  p max(3,3,3) == "All equal"
end

max_test
