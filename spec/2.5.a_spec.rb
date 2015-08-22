require_relative 'spec_helper'
require_relative '../chapter2/linked_list'
require_relative '../chapter2/list_node'
require_relative '../chapter2/2.5.a'

describe 'sum of reverse lists' do
  it 'returns the sum of the nodes two linked lists' do
    first_list = LinkedList.new(3)
    first_list.add(5)
    first_list.add(7)
    second_list = LinkedList.new(4)
    second_list.add(6)
    second_list.add(8)
    expect(sum_of_reverse_lists(first_list, second_list)).to eq('1->6->1->7')
  end
end
