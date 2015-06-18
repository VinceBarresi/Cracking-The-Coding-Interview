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

str = 'please replace all of the spaces in this string             ' 

def replace_spaces str
  p str.gsub(" ", "%20")
end

replace_spaces str
