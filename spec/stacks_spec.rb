# 
#
# require_relative '../stacks'
#
#
# describe Stack do
#
#   describe '::new' do
#     let!(:node) { Node.new('node') }
#     it 'takes an argument (for the head attribute)' do
#         expect(SinglyLinkedList).to respond_to(:new).with(1).argument # TODO passing early
#     end
#     context 'when argument for head is a Node' do
#       subject(:node_head_list) { SinglyLinkedList.new(node) }
#       it 'sets the head instance variable to the argument' do
#         expect(node_head_list).to be_a SinglyLinkedList
#         expect(node_head_list.head).to eq node
#       end
#     end
#     context 'when argument for head is nil' do
#       subject(:nil_head_list) { SinglyLinkedList.new(nil) }
#       it 'sets the head instance variable to the argument' do
#         expect(nil_head_list).to be_a SinglyLinkedList
#         expect(nil_head_list.head).to be_nil
#       end
#     end
#     context 'when argument for head is not a Node or nil' do
#       subject(:list) { SinglyLinkedList.new(14) }
#       it 'creates a new node for the head with the argument as data' do
#         expect(list).to be_a SinglyLinkedList
#         expect(list.head).to be_a Node
#         expect(list.head.data).to eq 14
#       end
#     end
#     it 'sets the head to nil if no head is provided' do
#       expect(SinglyLinkedList.new.head).to be_nil
#     end
#   end
