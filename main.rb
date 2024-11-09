require_relative 'lib/LinkedList'

# create list
list = LinkedList.new()
list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')
list.insert_at("frog", 5)
# display
puts list