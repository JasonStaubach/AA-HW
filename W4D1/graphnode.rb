require "byebug"

class GraphNode

    attr_accessor :neighbors
    attr_reader :value

    def initialize(value)
        @value = value
        @neighbors = []
    end

    def self.bfs(starting_node, target_value)
        visited = Array.new()
        queue = [starting_node]
        until queue.empty?
            checker = queue.shift
            return checker if checker.value == target_value
            visited.push(checker.value)
            checker.neighbors.each {|ele| queue << ele unless visited.include?(ele.value)}
        end
        return nil

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
# debugger
p GraphNode.bfs(a, "b")
p GraphNode.bfs(a, "f")


