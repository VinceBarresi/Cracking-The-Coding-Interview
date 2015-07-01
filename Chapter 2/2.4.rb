=begin
  Cracking The Coding Interview
  Chapter 2, Problem 2.4, page 75
  Write code to partition a linked list around a value x, such
  that all nodes less than x come before all nodes greater than x.
=end

require_relative 'linked_list'
require_relative 'node'

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

x = rand(10)

puts 'x is ' + x.to_s

less_than_x = Array.new
greater_than_x = Array.new
new_rand_arr = Array.new

j = 0

until j == 9
  if rand_arr[j] < x
    less_than_x[j] = rand_arr[j]
  else 
    greater_than_x[j] = rand_arr[j]
  end
  j += 1
end

k = 0

l = less_than_x.length - 1

until k == l
  new_rand_arr[k] = less_than_x[k]
  k += 1
end

m = 0

until l == 9
  new_rand_arr[l] = greater_than_x[m]
  l += 1
end

partitioned_list = LinkedList.new(10)

new_rand_arr.each {|n| partitioned_list.add(n) }

puts 'partitioned list: ' 
partitioned_list.display
