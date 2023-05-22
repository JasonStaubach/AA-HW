class GraphNode

    attr_accessor :neighbors
    attr_reader :value
    
    def initialize(value)
        @value = value
        @neighbors = []
    end

end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')