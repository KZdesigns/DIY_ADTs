class Queue
    attr_accessor :queue

    def initialize(*values)
        @queue = values
    end

    def enqueue(el)
        @queue.push(el)
    end

    def dequeue
        @queue.shift
    end

    def peek
       @queue.first
    end
end