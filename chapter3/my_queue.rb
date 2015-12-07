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
    move_stack_content if @out_stack.empty?
    @out_stack.pop
end
