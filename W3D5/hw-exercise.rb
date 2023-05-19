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
      @stack.shift
    end
  
    def peek
      @stack[0]
    end
  end

  s = Stack.new
  s.push(["hi"])
  s.push(["hello"])
  s.push(["Im first"])
  s.pop
  p s.peek
  p s