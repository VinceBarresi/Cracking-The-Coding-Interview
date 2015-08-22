require File.expand_path("../graph_node", __FILE__)

# Directed Graph
class Graph
  attr_accessor :nodes, :edges
  
  # initialize graph object with
  # arrays to hold nodes and edges
  def initialize
    @nodes = []
    @edges = []
  end

  # displays all nodes in the graph
  def display_nodes
    nodes.size.times do |i|
      p nodes[i]
    end
  end

  # displays all edges in the graph
  def display_edges
    edges.size.times do |i|
      p edges[i]
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
    edges << destination_node
  end
end
