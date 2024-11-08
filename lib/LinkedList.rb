require_relative 'Node'

class LinkedList
  attr_accessor :head, :size
  
  def initialize()
    self.head = nil
    self.size = 0
  end

  def crawl(size = false)
    curr = head
    nodes = 1
    while yield(curr)
      curr, nodes = curr.next, nodes + 1
    end
    size ? nodes : curr
  end
  
  def append(value)
    if head.nil?
      @head = Node.new(value)
    else
      tail = crawl { |curr| !curr.next.nil? }
      tail.next = Node.new(value)
    end
    @size += 1
  end

  def prepend(value)
    new_node = Node.new(value)
    new_node.next = head
    @head = new_node
    @size += 1
  end

  def size
    puts crawl("nodes") { |curr| !curr.next.nil?}
  end

  def get_head
    puts head.value
  end

  def get_tail
    curr = crawl {|curr| !curr.next.nil?}
    puts curr.value
  end


  def display
    crawl do |curr|
      print "#{curr.value} -> "
      true if !curr.next.nil?
    end
    puts "nil"
  end
end