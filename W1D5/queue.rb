class Queue 
    def initialize 
        @underlying_array = []
    end

    def enqueue(el)
        @underlying_array.push(el)
    end 

    def dequeue
        @underlying_array.shift
    end 

    def peek
        @underlying_array[0]
    end
end

queue = Queue.new
queue.enqueue(34)
queue.enqueue(74)
p queue.peek