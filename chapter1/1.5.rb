=begin
  Cracking The Coding Interview
  Chapter 1, Problem 1.5, page 73
  Implement a method to perform a basic string compression
  using the counts of repeated characters. For example, aabcccccaaa
  would be a2b1c5a3. If the "compressed" string would not become
  smaller than the original string, your method would return the
  original string. You can assume the string only has only upper
  and lower case (a-z).
=end

#if we want to generate a random string of random length
#str = (0...rand(26)).map { (65 + rand(26)).chr }.join

def compress_string str
  arr_str = str.split('')
  index, count = 0, 0
  last_char, new_str = arr_str[0], ''
  arr_str.each do |e|
    if e == last_char
      count += 1
    else
      new_str += last_char + '' + count.to_s
      last_char = arr_str[index]
      count = 1
    end
  end
  index += 1
  compressed_str = new_str + last_char + count.to_s
  compressed_str.length < str.length ? compressed_str : str
end

p compress_string 'aabcccccaaa'
