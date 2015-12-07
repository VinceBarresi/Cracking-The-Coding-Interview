=begin
  Cracking The Coding Interview
  Chapter 2, Problem 2.7, page 78
  Implement a function to check if a linked list
  is a palindrome.
=end

require_relative 'linked_list'
require_relative 'list_node'

def check_if_palindrome
	list = gen_random_list
  list.is_palindrome?
end
