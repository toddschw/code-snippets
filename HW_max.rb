# Homework Problem
# Define a method named max that takes two numbers
# as arguments and returns the largest of them.
# Don’t worry about being defensive with this one.
# Assume the arguments are numeric. But still, make sure you write tests!


def max (num, number)
  if num > number
    num
  elsif num < number
    number
  elsif num == number
    "equal"
  end
end

def max_test
  p max(3,4) == 4
  p max(4,3) == 4
  p max(3,3) == "equal"
end

max_test
