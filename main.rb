require_relative 'lib/LinkedList'

#***On problem 6, thinking about putting processes here to pass into these methods


list = LinkedList.new()
list.append(2)
list.append(3)
list.append(4)
list.prepend(1)
list.display
list.size
list.get_tail
list.prepend("apple")
list.display
list.pop
list.display
puts list.contains?(2)
puts list.contains?("apple")
puts list.contains?(nil)
puts list.contains?("banana")
puts list.contains?(4)
puts list.find("apple")
puts list.find(3)
p list.find(nil)
p list.find(4)
# list.prepend(1)
# list.display
# list.size
# list.get_head
# list.append(3)
# list.display
# list.get_tail