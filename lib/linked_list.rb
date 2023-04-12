class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(data)
    if !@head
      @head = Node.new(data)
    else
      current_node = head
      while !current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
    end
  end

  def count
    if !@head
      count = 0
    else
      count = 1
      current_node = head
      while !current_node.next_node.nil?
        current_node = current_node.next_node
        count += 1
      end
    end
    count
  end

  def to_string
    str = []
    if !@head
      ''
    else
      current_node = head
        while !current_node.next_node.nil?
          str << current_node.data
          current_node = current_node.next_node
        end
      str << current_node.data
    end
    str.join(' ')
  end
end
