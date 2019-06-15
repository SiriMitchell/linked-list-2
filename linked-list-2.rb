class LinkedListNode
  attr_accessor :value, :next_value

  def initialize(value, next_value=nil)
    @value = value
    @next_value = next_value
  end
end

  
  def reverse_list(list, previous=nil)
    current_node = list.next_value
    list.next_value = previous

    if current_node
      reverse_list(current_node, list)
    else
      list
    end
  end

      

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_value)
  else
    print "nil\n"
  end
end


node = LinkedListNode.new(37)
node = LinkedListNode.new(99, node)
node = LinkedListNode.new(12, node)



 revlist = reverse_list(node)
 puts "printing the reversed list"
 print_values(revlist)