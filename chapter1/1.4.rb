=begin
  Cracking The Coding Interview
  Chapter 1, Problem 1.4, page 73
  Write a method to replace all spaces in a string with "%20". You 
  may assume that the string has sufficient space at the end of the
  string to hold the additional characters, and that you are given
  the "true" length of the string. (Note: if implementing in Java, 
  please use a character array so that you can perform this 
  operation in place.)
=end

def replace_spaces str
  str.gsub(" ", "%20")
end

def replace_spaces_without_library str
  str = str.split("")
  str.size.times {|i| str[i] = "%20" if str[i] == " "}
  str.join
end

p replace_spaces 'please replace all of the spaces in this string             '
p replace_spaces_without_library 'hello world'
