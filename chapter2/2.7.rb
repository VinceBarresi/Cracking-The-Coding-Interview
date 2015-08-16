=begin
  Cracking The Coding Interview
  Chapter 2, Problem 2.7, page 78
  Implement a function to check if a linked list
  is a palindrome.
=end

require_relative 'linked_list'
require_relative 'node'

puts 'Creating LinkedList of 10 Node elements with random values'

list = LinkedList.new(3)
rand_arr = Array.new

i = 0

while i < 3
  rand_arr[i] = rand(10)
  i += 1
end

rand_arr.each {|n| list.add(n) }

puts "Displaying Linked List:"
list.display

list.is_palindrome?

def check_if_palindrome list
  list.is_palindrome?
end
