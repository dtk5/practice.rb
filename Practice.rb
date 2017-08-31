# Loop Problem Practice
# For each of the following problems, write the code to solve the problem. Each solution should be structured as a 
# method that takes an array as a parameter and returns the result. You should use the Array#each method to solve each problem.

class Practice

  def initialize()
    @string_lengths = Array.new
    @numChecker = Array.new
  end

 # You are given an array of String objects, stored in a variable called my_strings. You want to use this array to create 
 # a new array of Integer objects, which represents the length of each string. We want to store the resulting array in a 
 # variable called string_lengths.
  def check_string(my_strings)
    my_strings.each do |i|
      @string_lengths << i.length
    end
    return "#{@string_lengths}"
  end


# You are given an array of String objects, stored in a variable called my_strings. You want to create a new array which 
# only contains the strings from the original array that have a length that is smaller than 4. We want to store the 
# resulting array in the original my_strings variable, overwriting the original value.
 def cut_string(my_strings)
    new_string = []
    my_strings.each do |i|
      new_string << i[0..3]
    end
    my_strings = new_string
    return "#{my_strings}"
  end

  # You are given an array of Integer objects, stored in a variable called my_nums. You want to use this array 
  #to create a new array which contains String objects, which say "even" or "odd" depending on the Integer in 
  #the original array.
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

  # You are given an array of String objects, stored in a variable called my_strings. You want to use this array to return 
  # the String that has the longest length. (In a tie, it should return the first String with the longest length)
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

#tests
  danny = Practice.new()
  puts danny.check_string(["danny", "Saomemdma", "da"])
  puts danny.even_or_odd([5, 2, 7,9,19,10])
  puts danny.cut_string(["danny", "Saomemdma", "daniel"])
  puts danny.longest_string(["dannydaid", "Saomemdma", "daniel"])

