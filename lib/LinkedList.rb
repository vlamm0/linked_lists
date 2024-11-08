require_relative 'Node'

class LinkedList
  attr_accessor :head, :size
  def initialize()
    self.head = nil
  end

  
  def append(value)
    new_node = Node.new(value)
    if head.nil?
      @head = new_node
    else
      curr = head
      curr = curr.next if !curr.next.nil?
      curr.next = new_node
    end
  end

  def prepend(value)
    new_node = Node.new(value)
    new_node.next = head
    @head = new_node
  end

  def size
    nodes = 1
    curr = head
    while !curr.next.nil?
      nodes += 1
      curr = curr.next
    end
    puts nodes
  end

  def display
    curr = head
    while curr
      print "#{curr.value} -> "
      curr = curr.next
    end
    puts
  end
end