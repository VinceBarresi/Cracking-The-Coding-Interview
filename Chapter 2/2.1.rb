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

nd = Node.new(1)
list = LinkedList.new(nd)

rand_arr = Array.new
i = 0

while i < 9
  rand_arr[i] = rand(10)
  i += 1
end

rand_arr.each {|n| list.insert(Node.new(n)) }

puts 'Current values contained in LinkedList:'
list.print

puts "\n"
puts 'Iterating through LinkedList and removes duplicates'

new_nd = Node.new(1)
new_list = LinkedList.new(new_nd)
new_rand_arr = rand_arr.uniq
new_rand_arr.each {|x| new_list.insert(Node.new(x))}
new_list.print
