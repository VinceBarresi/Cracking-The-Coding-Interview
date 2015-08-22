class GraphNode
    attr_accessor :name, :adjacent_nodes

    # creates a Node object with a name
    # and an array to hold the nodes
    # adjacent to the new node
    def initialize name
      @name = name
      @adjacent_nodes = []
    end

    def name
      @name
    end
  end
