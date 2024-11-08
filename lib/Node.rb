class Node
  attr_accessor :value, :next
  def initialize(value = nil)
    self.value = value
    self.next = nil
  end
end