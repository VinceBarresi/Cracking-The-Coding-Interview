require_relative 'empty_node'

class TreeNode
  attr_reader :value
  attr_accessor :left, :right
  
  # initialize tree node with a value and two empty sides
  def initialize val
    @value = val
    @left = EmptyNode.new
    @right = EmptyNode.new
  end
end
