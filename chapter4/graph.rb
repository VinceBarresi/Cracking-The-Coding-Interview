require File.expand_path("../graph_node", __FILE__)

# Directed Graph
class Graph
  attr_accessor :nodes
  
  # initialize graph object with
  # an array to hold nodes
  def initialize
    @nodes = []
  end

  # displays all nodes in the graph
  def display_nodes
    @nodes.size.times do |i|
      p nodes[i]
    end
  end

  # adds a new node to the graph
  def add_node node
    GraphNode.new(node)
    @nodes.push(node)
  end

  # adds edge between 2 nodes
  def add_edges source_node, destination_node
    return if source_node.adjacent_nodes.include?(destination_node)
    source_node.adjacent_nodes << destination_node
  end
end
