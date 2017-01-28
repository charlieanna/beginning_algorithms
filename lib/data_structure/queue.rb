module DataStructure
 class Queue
  def initialize
    @items = []
  end
  def size
    @items.size
  end 

  def is_empty
    size == 0
  end

  def enqueue(item)
    @items << item
  end
  
  def dequeue
    raise EmptyQueueException.new if is_empty
    @items.shift
  end
  def clear
    @items.clear
  end
 end 
 class EmptyQueueException < Exception

 end
end
