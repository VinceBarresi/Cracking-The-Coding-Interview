=begin
  Cracking The Coding Interview
  Chapter 3, Problem 3.5, page 81
  Implement a MyQueue class which implements
  a queue using 2 stacks.
=end

require_relative 'my_queue'

my_queue = MyQueue.new
5.times { my_queue.enqueue(rand(10)) }
my_queue.dequeue
my_queue
