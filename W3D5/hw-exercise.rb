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

  class Queue
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end


  end

  q = Queue.new
  q.enqueue("hi")
  q.enqueue("bye")
  p q
  q.dequeue
  p q