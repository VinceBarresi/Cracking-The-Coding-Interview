require_relative 'spec_helper'
require File.expand_path("../../chapter4/graph_node", __FILE__)
require File.expand_path("../../chapter4/graph", __FILE__)

describe 'initialize' do
  context 'graph constructor'
    it 'contructs a Graph object' do
      spec_graph = Graph.new
      expect(spec_graph.class).to eq(Graph)
    end
end

describe 'add_node' do
  context 'nodes in a graph'
    it 'adds a node to the graph' do
      spec_graph = Graph.new
      spec_graph.add_node(:spec_node)
      expect(spec_graph.nodes[0]).to eq(:spec_node)
    end
end

describe 'add edges' do
  context 'edges connecting nodes in the graph'
    it 'adds an edge between two nodes' do
        spec_graph = Graph.new
        @spec_node1 = GraphNode.new("Spec Node 1")
        @spec_node2 = GraphNode.new("Spec Node 2")
        spec_graph.add_edges(@spec_node1, @spec_node2)
        expect(@spec_node1.adjacent_nodes[0]).to eq(@spec_node2)
    end
end
