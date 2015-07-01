=begin
  Cracking The Coding Interview
  Chapter 1, Problem 1.3, page 73
  Given two strings, write a method to decide if one is a 
  permuatation of the other
=end

str_one = "abbb" 
str_two = "bbba"
 
p str_one.split("").to_s

def swap_characters x, y
  temp = x
  x = y
  y = temp
end

def print *a, i, n
  i, j = 0
  if i == n 
    puts "\n"a
  else
    while j <= n
      swap_characters a + i, a + j
      puts a.to_s + (i + 1).to_s +  n.to_s
      swap_characters a + i, a + j
    end
  end
end
