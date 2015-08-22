require File.expand_path("../graph_node", __FILE__)

# UndirectGraph inherites from Graph.
# It has has connected nodes where where all the edges 
# of the connected nodes are bi-directional. 
class UndirectedGraph < Graph

  # *Override* 
  # adds bidirectional edges between nodes
  def add_edges source_node, destination_node
    return if source_node.adjacent_nodes.include?(destination_node)
    return if destination_node.adjacent_nodes.include?(source_node)
    source_node.adjacent_nodes << destination_node
    destination_node.adjacent_nodes << source_node
  end
end
