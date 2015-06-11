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

def find_unique_with_data_structures str, str_array 
  puts "using method with data structures..."
  if str_array.each.find {|e| str_array.count(e) > 1 }
    puts "string has non unique characters"
  else
    puts "string has all unique characters"
  end
end

#(b)

def find_unique_without_data_structures str
  puts "\nusing method without data structures..."
  if str.each_char.find { |c| str.count(c) > 1 } 
    puts "string has non unique characters"
  else
    puts "string has all unique characters"    
  end
end

find_unique_with_data_structures str, str_array
find_unique_without_data_structures str
