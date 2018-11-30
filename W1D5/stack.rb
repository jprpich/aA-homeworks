class Stack
    def initialize
        @underlying_array = []
    end

    def push(el)
      @underlying_array.push(el)
      el
    end

    def pop
      @underlying_array.pop
    end

    def peek
      @underlying_array[-1]
    end
  end

  cool_stack = Stack.new
  cool_stack.push(45)
  p cool_stack
  p cool_stack.peek

  