=begin
  Cracking The Coding Interview
  Chapter 2, Problem 2.1, page 77
  Write code to remove duplicates from singly linked list.
  FOLLOW UP: 
  How would you solve this problem if a temporary buffer is
  not allowed.
=end

require_relative 'list_node'
require_relative 'linked_list'
require_relative '../helpers'

def remove_duplicates_from_singly_linked_list list
  rand_arr = gen_random_array(10)
  new_rand_arr = rand_arr.uniq
  new_list = LinkedList.new(list.size)
  new_rand_arr.each {|x| new_list.add(x)}
end
