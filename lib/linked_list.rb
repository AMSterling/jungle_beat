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

  def prepend(data)
    if !@head
      @head = Node.new(data)
    else
      current_head = Node.new(data)
      current_head.next_node = @head
      @head = current_head
    end
  end

  def insert(index, data)
    if !@head
      @head = Node.new(data)
    else
      current_node = head
      new_node = Node.new(data)
      (index - 1).times do
        current_node = current_node.next_node
      end
      new_node.next_node = current_node.next_node
      current_node.next_node = new_node
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
