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

    def peek
        @queue[0]
    end


  end

  class Map
    def initialize
        @map = []
    end

    def set(key,val)
        if get(key) == false
            @map << [key,val]
        end
    end

    def get(key)
        @map.each_with_index do |pair, i|
            return i if pair[0] == key
        end
        false
    end

    def delete(key)
        @map.each_with_index do |pair, i|
            @map.delete(pair) if pair[0] == key
        end
    end


  end

  m = Map.new
  m.set("dog","caly")
  m.set("cat","stache")
  p m.get("dog")
  m.delete("cat")
  p m
