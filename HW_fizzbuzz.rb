# Homework Problem
# Write a program that prints the numbers 1 to 100, however:
# 1) If the number is a multiple of 3 print "Fizz" instead of the number.
# 2) If the number is a multiple of 5 print "Buzz" instead of the number.
# 3) If the number which are multiples of both 3 and 5 print "FizzBuzz" instead of the number.

(1..100).to_a.each do | num |
  if ( (num % 3 == 0) && (num % 5 == 0))
    puts "FizzBuzz"
  elsif num % 3 == 0
    puts "Fizz"
  elsif num % 5 == 0
    puts "Buzz"
  else
    puts "#{num}"
  end
end
