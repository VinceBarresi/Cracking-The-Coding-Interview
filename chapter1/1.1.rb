=begin
  Cracking The Coding Interview
  Chapter 1, Problem 1.1, page 73
  (a)Implement an algorithm to determine if a string has all unique characters.
  (b)What if you cannot use additional data structures?
=end

#generates a random string of random length starting with ASCII 65 - A
str = (0...rand(26)).map { (65 + rand(26)).chr }.join
puts "random string of random length = " + str 
str_array = str.split("")

#(a)
def find_unique_with_data_structures? str_array 
  if str_array.each.find {|e| str_array.count(e) > 1 }
    return false
  else
    return true
  end
end

#(b)
def find_unique_without_data_structures? str
  if str.each_char.find { |c| str.count(c) > 1 } 
    return false
  else
    return true
  end
end

find_unique_with_data_structures? str_array
find_unique_without_data_structures? str
