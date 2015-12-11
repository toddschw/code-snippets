# This method illustrates yielding to a block using
# a user defined method called my_string_method

class String
  def my_string_method
    puts "start in method, for strings"

    count = 0
    while count < self.size
      yield("foo")
      count += 1
    end

    puts "end in method, for strings"
  end
end

"word".my_string_method do | x |
  x << " in block"
  puts x
end

# This method illustrates how the each method
# might be written to accept a block.  It
# creates a new, user defined method called
# each_wyn that acts on an array exactly like the each method


class Array
  def each_wyn
    count = 0
    while count < self.size
      yield(self[count])
      count += 1
    end
  end
end

["Fun", "Awesome", "Intense"].each do | x |
  puts "Wyncode is #{x}!"
end
