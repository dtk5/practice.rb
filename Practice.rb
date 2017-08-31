# You are given an array of String objects, stored in a variable called
# my_strings. You want to use this array to create a new array of
#Integer objects, which represents the length of each string.
#We want to store the resulting array in a variable called
#string_lengths.

class Practice

  def initialize()
    @string_lengths = Array.new
    @numChecker = Array.new

  end

  def check_string(my_strings)
    my_strings.each do |i|
      @string_lengths << i.length
    end
    return "#{@string_lengths}"
  end

  def cut_string(my_strings)
    new_string = []
    my_strings.each do |i|
      new_string << i[0..3]
    end
    my_strings = new_string
    return "#{my_strings}"
  end

  def even_or_odd(my_nums)
    my_nums.each do |i|
      if(i%2==0)
        @numChecker << "even"
      else
        @numChecker << "odd"
      end
    end
    return "#{@numChecker}"
  end

  def longest_string(my_strings)
    longest = ""
    my_strings.each do |i|
      if(longest.length<i.length)
        longest =i
      end
    end
    return longest
  end
end
  danny = Practice.new()
  puts danny.check_string(["danny", "Saomemdma", "da"])
  puts danny.even_or_odd([5, 2, 7,9,19,10])
  puts danny.cut_string(["danny", "Saomemdma", "daniel"])
  puts danny.longest_string(["dannydaid", "Saomemdma", "daniel"])


# You are given an array of String objects, stored in a variable
#called my_strings. You want to create a new array which only
#contains the strings from the original array that have a length
#that is smaller than 4. We want to store the resulting array in
#the original my_strings variable, overwriting the original value.
#
# You are given an array of String objects, stored in a variable
#called my_strings. You want to use this array to return the String
# that has the longest length. (In a tie, it should return the first
# String with the longest length)
