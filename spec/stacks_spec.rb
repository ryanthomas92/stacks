

require_relative '../stacks'


describe Stack do

  describe '::new' do
    let!(:node) { Node.new('node') }
    it 'takes an argument (for the top attribute)' do
        expect(Stack).to respond_to(:new).with(1).argument # TODO passing early
    end
    context 'when argument for top is a Node' do
      subject(:node_top_stack) { Stack.new(node) }
      it 'sets the top instance variable to the argument' do
        expect(node_top_stack).to be_a Stack
        expect(node_top_stack.top).to eq node
      end
    end
    context 'when argument for top is nil' do
      subject(:nil_top_stack) { Stack.new(nil) }
      it 'sets the top instance variable to the argument' do
        expect(nil_top_stack).to be_a Stack
        expect(nil_top_stack.top).to be_nil
      end
    end
    context 'when argument for top is not a Node or nil' do
      subject(:stack) { Stack.new(14) }
      it 'creates a place at the top top with the argument as data' do
        expect(stack).to be_a Stack
        expect(stack.top).to be_a Node
        expect(stack.top).to eq 14
      end
    end
    it 'sets the top to nil if no top is provided' do
      expect(Stack.new.top).to be_nil
    end
  end

  describe '#top' do
    let!(:node) { Node.new 'some data' }
    subject(:myStack) { Stack.new node }
    it 'allows getting a top' do
      expect(myStack).to respond_to(:top)
      expect(myStack.top).to be_a(Node)
      expect(myStack.top).to eq(node)
    end
  end

end
