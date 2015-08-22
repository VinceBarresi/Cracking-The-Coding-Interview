require_relative 'spec_helper'
require File.expand_path("../../chapter4/graph_node", __FILE__)
require File.expand_path("../../chapter4/undirected_graph", __FILE__)

describe 'initialize' do
  context 'graph constructor'
    it 'contructs an Undirected Graph object' do
      spec_graph = UndirectedGraph.new
      expect(spec_graph.class).to eq(UndirectedGraph)
    end
end

describe 'add_edges' do
  context 'edges connecting nodes in the undirected graph'
    it 'adds an edge between two nodes' do
        spec_graph = UndirectedGraph.new
        @spec_node1 = GraphNode.new("Spec Node 1")
        @spec_node2 = GraphNode.new("Spec Node 2")
        spec_graph.add_edges(@spec_node1, @spec_node2)
        expect(@spec_node1.adjacent_nodes[0]).to eq(@spec_node2)
        expect(@spec_node2.adjacent_nodes[0]).to eq(@spec_node1)
    end
end
