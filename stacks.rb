require_relative 'singly_linked_list'

class Stack
  attr_reader :top, :contents

  def initialize(top=nil)
    @contents = SinglyLinkedList.new(top)
    @top = @contents.head
  end

  def inspect
    @contents.inspect.sub('(head)', '(top)')
  end

  def push (element)
    @contents.insert_at_start(element)
    @top = element
  end

  def pop
    popped_element = @top
    @contents.remove_from_start
    popped_element
  end

  def empty?
    @contents.empty?
  end

end


def main
  sta = Stack.new
  p sta.inspect
  sta.push 5
  p sta.inspect
  sta.push "fargo"
  sta.push "minnetonka"
  p sta.inspect
  p sta.pop
  p sta.inspect
  p sta.empty?
  sta.pop
  sta.pop
  sta.pop
  p sta.inspect
  p sta.empty?
end

main
