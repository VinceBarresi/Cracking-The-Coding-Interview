=begin
  Cracking The Coding Interview
  Chapter 2, Problem 2.5, page 77
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

require_relative 'linked_list'
require_relative 'list_node'

def sum_of_reverse_lists list1, list2
  value_one = list1.list_reverse_to_int
  value_two = list2.list_reverse_to_int
  sum = value_one + value_two
  sum_list = LinkedList.new(nil)
  sum.to_s.split(//).each {|n| sum_list.add(n)}
end

