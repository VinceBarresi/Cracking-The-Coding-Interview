=begin
  Cracking The Coding Interview
  Chapter 2, Problem 2.1, page 75
  Write an algorithm to remove the kth element from a 
  singly linked list.
=end

require_relative 'node.rb'
require_relative 'linked_list.rb'

puts 'Creating LinkedList of 10 Node elements with random values'
# Initializing a Linked List with a node containing value (5)
list = LinkedList.new(10)

rand_arr = Array.new
i = 0

while i < 9
  rand_arr[i] = rand(10)
  i += 1
end

rand_arr.each {|n| list.add(n) }

# Display the Linked List
puts "Displaying Linked List:"
list.display

puts 'Remove random node from LinkedList:'

p node_to_remove = rand(10)

puts 'Removing ' + node_to_remove.to_s + ' th ' + 'node from the LinkedList'

list.delete(node_to_remove)

puts "\n"

list.display