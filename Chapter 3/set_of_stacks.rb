require_relative '../helpers'

class SetOfStacks
  def initialize stack_capacity
    @stack_capacity = stack_capacity
    @stacks = []
    @stack = nil
    @stack_count = 0
    @stack_elements = 0
  end
  
  def push value
    if @stack == nil
      @stack = []
      @stack_count += 1
      @stack.push(value)
    elsif @stack_elements != @stack_capacity
       @stack.push(value)
    elsif @stack_elements == @stack_capacity
      @stacks << @stack
      @stack_elements = 0
      @stack = []
      @stack_count += 1
      @stack.push(value)
    end
    @stack_elements += 1
    @stack
  end

  def pop
    return nil if @stack.nil?
    value = @stack.pop
    if @stack.size == 0
      @stacks.flatten
      @stack_count -= 1
    end
    @stack_elements -= 1
    value
  end
end
