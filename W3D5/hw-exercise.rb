class Stack
    def initialize
      # create ivar to store stack here!
      @stack = []
    end
  
    def push(el)
      # adds an element to the stack
      @stack.unshift(el)
    end
  
    def pop
      # removes one element from the stack
    end
  
    def peek
      # returns, but doesn't remove, the top element in the stack
    end
  end

  s = Stack.new
  s.push(["hi"])
  s.push(["hello"])
  p s