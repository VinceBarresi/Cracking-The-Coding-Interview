=begin
  Cracking The Coding Interview
  Chapter 1, Problem 1.1, page 73
  (a)Implement an algorithm to determine if a string has all unique characters.
  (b)What if you cannot use additional data structures?
=end

#(a)
#generates a random string of random length starting with ascii A
p str = (0...rand(26)).map { (65 + rand(26)).chr }.join
str_array = str.split("")
index = 0

dupes = str_array.uniq.select do |u|
  bool = str_array.find_all {|e| e == u}.size != 1
  if bool == true
    puts "string has non unique characters"
    break
  else
    puts "string has unique characters"
    break
  end
end

#(b)
