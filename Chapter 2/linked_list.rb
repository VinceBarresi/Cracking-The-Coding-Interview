class LinkedList
  attr_accessor :head, :tail

  # Initialize head and tail to same initial Node.
  def initialize (head)
      raise "LinkedList must be initialized with a Node." unless head.is_a?(Node)
          
      @head = head
      @tail = head
  end

  # Insert Node after the tail of the LinkedList.
  def insert(node)
      @tail.next = node
      @tail = @tail.next
  end

  # Print out all the values of the LinkedList in order.
  def print
      current_node = @head
      
      while current_node != nil
          puts "\tLinked List Node Value = #{current_node.value}"
          current_node = current_node.next
      end
  end

  # Iterate through LinkedList and yield values to block.
  def iterate
      if block_given?
          current_node = @head

          while current_node != nil
              yield current_node.value
              current_node = current_node.next
          end
      else
          print
      end
  end
end
