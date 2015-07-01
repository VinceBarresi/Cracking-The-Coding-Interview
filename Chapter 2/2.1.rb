=begin
  Cracking The Coding Interview
  Chapter 2, Problem 2.1, page 75
  Write code to remove duplicates from singly linked list.
  FOLLOW UP: 
  How would you solve this problem if a temporary buffer is
  not allowed.
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

puts "\n"
puts 'Iterating through LinkedList and remove duplicates'

rand_arr = Array.new
i = 0

while i < 9
  rand_arr[i] = rand(10)
  i += 1
end

rand_arr.each {|n| list.add(n) }

puts 'Current values contained in LinkedList:'
list.display

puts "\n"
puts 'Iterating through LinkedList and remove duplicates'

new_list = LinkedList.new(10)
new_rand_arr = rand_arr.uniq
new_rand_arr.each {|x| new_list.add(x) }
new_list.display
