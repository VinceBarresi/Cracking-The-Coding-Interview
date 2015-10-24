class MyQueue
  def initialize
    @in_stack = []
    @out_stack = []
  end

  def move_stack_content
    while !@in_stack.empty?
      @out_stack.push(@in_stack.pop)
    end
  end

  def enqueue value
    @in_stack.push(value)
  end

  def dequeue 
    if @out_stack.empty?
      move_stack_content
    end
    @out_stack.pop
  end
end
