module DataStructure
  class Node
    attr_accessor :next, :data
    def initialize(data)
      @data = data
    end
  end
  class LinkedList
    attr_accessor :head
    def add(new_node)
      if @head.nil?
        @head = new_node
      else
        node = @head
        while node.next
          node = node.next
        end
        node.next = new_node
      end
    end
    def last
      node = @head
      while node.next
        node = node.next
      end
      node
    end

    def add_to_front(new_node)
      unless @head
        @head = new_node
        return
      end
      new_node.next = @head
      @head = new_node
    end
    def to_s
      node = head
      str = ""
      while node.next
        str += "#{node.data}"
        node = node.next
      end
      str += node.data.to_s
      str
    end
  end
end
