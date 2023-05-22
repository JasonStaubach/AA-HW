class GraphNode

    attr_accessor :neighbors
    attr_reader :value

    def initialize(value)
        @value = value
        @neighbors = []
    end

    def bfs(starting_node, target_value)
        visited = Set.new()
        queue = starting_node 
        until queue.empty?
            checker = queue.shift
            return checker if starting_node.value == target_value
            visited.add(checker)
            checker.neighbors.each {|ele| queue << ele unless visited.include?(ele)}
        end
        return false

    end

end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')

a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]