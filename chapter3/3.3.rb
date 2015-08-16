=begin
  Cracking The Coding Interview
  Chapter 3, Problem 3.3, page 81
  Imagine a (literal) stack of plates. If the stack gets
  too high, it might topple. Therefore, in real life, we 
  would likely start a new stack when the previous stack
  exceeds some threshold. Implement a data structure 
  SetOfStacks that mimics this. SetOfStacks should be 
  composed of several stacks and should create a new
  stack once the previous one exceeds capacity. 
  SetOfStacks.push and SetOfStacks.pop should behave
  identically to a single stack (that is, pop() should
  return the same value as if would be popped from
  a single stack).
  FOLLOW UP
  Implement a function popAt(int index) which performs a pop
  operation on a specific sub-stack.
=end

require_relative 'set_of_stacks'

stacks = SetOfStacks.new(2)

p stacks.push(1)
p stacks.push(2)
p stacks.push(3)
p stacks.push(4)
p stacks.push(5)
p stacks.pop
p stacks
