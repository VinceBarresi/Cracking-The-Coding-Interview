=begin
  Cracking The Coding Interview
  Chapter 2, Problem 2.1, page 77
  Write an algorithm to remove the kth element from a 
  singly linked list.
=end

require_relative 'node.rb'
require_relative 'linked_list.rb'

puts 'Creating LinkedList of 10 Node elements with random values'

list = LinkedList.new(10)

rand_arr = Array.new
i = 0

while i < 9
  rand_arr[i] = rand(10)
  i += 1
end

rand_arr.each {|n| list.add(n) }

puts "Displaying Linked List:"
list.display

list.delete_rand_kth list

puts "\n"

list.display
