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
    @top = @contents.head
  end

  def pop
    popped_element = @top
    if popped_element != nil
      @contents.remove_from_start
      @top = @contents.head
      popped_element.data
    end
  end

  def empty?
    @contents.empty?
  end

end
