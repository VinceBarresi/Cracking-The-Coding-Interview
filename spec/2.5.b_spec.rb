require_relative 'spec_helper'
require_relative '../chapter2/linked_list'
require_relative '../chapter2/list_node'
require_relative '../chapter2/2.5.b'

describe 'sum of lists' do
  it 'returns the sum of the nodes two linked lists' do
    first_list = LinkedList.new(1)
    first_list.add(2)
    first_list.add(3)
    second_list = LinkedList.new(4)
    second_list.add(5)
    second_list.add(6)
    expect(sum_of_lists(first_list, second_list)).to eq('5->7->9')
  end
end
