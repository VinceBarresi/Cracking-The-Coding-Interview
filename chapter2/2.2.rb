=begin
  Cracking The Coding Interview
  Chapter 2, Problem 2.1, page 77
  Write an algorithm to remove the kth element from a 
  singly linked list.
=end

require_relative 'list_node'
require_relative 'linked_list'

def delete_random_kth
	list = gen_random_list
	delete_rand_kth list
end
