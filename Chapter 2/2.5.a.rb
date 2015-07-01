=begin
  Cracking The Coding Interview
  Chapter 2, Problem 2.5, page 75
  You have two numbers represented by a linked list, where
  each node contains a single digit. The digits are stored
  in reverse order, such that the 1's digit is at the head 
  of the list. Write a function that adds the two numbers 
  and returns the sum as a linked list.

  EXAMPLE
  Input: (7->1->6) + (5->9->2). That is, 617 + 295.
  Output: 2->1->9. That is, 912

  FOLLOWUP
  Suppose the digits are stored in forward order. Repeat the 
  above problem.
  
  EXAMPLE
  Input: (6->1->7) + (2->9->5). That is, 617 + 295
  Output: 2->1->9. That is, 912
=end

# First Example

require_relative 'linked_list'
require_relative 'node'

puts 'Creating LinkedList of 10 Node elements with random values'

first_list = LinkedList.new(3)
first_rand_arr = Array.new
second_list = LinkedList.new(3)
second_rand_arr = Array.new

i = 0

while i < 2
  first_rand_arr[i] = rand(10)
  second_rand_arr[i] = rand(10)
  i += 1
end

first_rand_arr.each {|n| first_list.add(n) }
second_rand_arr.each {|n| second_list.add(n) }

puts 'Displaying First Linked List:'
first_list.display

puts 'Displaying Reversed First Linked List:'
first_list.display_reverse_list

puts 'Displaying Second Linked List:'
second_list.display

puts 'Displaying Reversed Second Linked List:'
second_list.display_reverse_list

value_one = first_list.list_reverse_to_int
value_two = second_list.list_reverse_to_int

sum = value_one + value_two

sum_list = LinkedList.new(nil)

sum.to_s.split(//).each {|n| sum_list.add(n) }

puts 'Sum of reversed lists as a list:'

sum_list.display
