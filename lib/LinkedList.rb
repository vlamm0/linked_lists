require_relative 'Node'


class LinkedList
  attr_accessor :head, :size

  def initialize()
    self.head = nil
  end

  def crawl(size = false)
    curr = head
    nodes = 1
    while yield(curr, nodes)
      curr, nodes = curr.next, nodes + 1
    end
    size ? nodes : curr
  end
  
  def append(value)
    if head.nil?
      @head = Node.new(value)
    else
      tail = crawl {|curr| !curr.next.nil?}
      tail.next = Node.new(value)
    end
  end

  def prepend(value)
    new_node = Node.new(value)
    new_node.next = head
    @head = new_node
  end

  def size
    puts crawl("nodes") { |curr| !curr.next.nil?}
    crawl("nodes") { |curr| !curr.next.nil?}
  end

  def get_head
    puts head.value
  end

  def get_tail
    tail = crawl {|curr| !curr.next.nil?}
    puts tail.value
  end

  def at(index)
    raise "***index must be positive***" if index < 0
    curr = crawl {|curr, nodes| index >= nodes }
    puts curr ? curr.value : "index #{index} out of range"
    curr ? curr : "index #{index} out of range"
  end

  def pop
    #next to last node
    at(size - 2).next = nil
  end

  def contains?(value)
    curr = crawl do |curr| 
      break if curr.nil? 
      curr.value != value
    end
    curr ? true : false
  end

  def display
    crawl do |curr|
      print "#{curr.value} -> "
      true if !curr.next.nil?
    end
    puts "nil"
  end
end