require_relative 'tree_node'

# BST
class BinarySearchTree
  # initialize root node
  def initialize val
    @root = TreeNode.new(val)
  end
  # values lesser than root will be inserted as a left child
  # values greater than root will be inserted as a right child
  def push val
    current_node = @root
    if val < current_node.value && current_node.left == nil 
      push_left_side(val)
      current_node = current_node.left
      elsif val > current_node.value && current_node.right == nil 
        push_right_side(val)
	current_node = current_node.right
    end
  end
end
