require_relative 'spec_helper'
require_relative '../chapter2/linked_list'
require_relative '../chapter2/list_node'
require_relative '../chapter2/2.7'

describe 'check if palindrome' do
  it 'returns true if a linked list is a palindrome' do
    list = LinkedList.new(1)
    list.add(2)
    list.add(1)
    expect(is_palindrome?(list)).to be_truthy
  end

  it 'returns false if a linked list is not a palindrome' do
    list = LinkedList.new(7)
    list.add(6)
    list.add(5)
    expect(is_palindrome?(list)).to be_falsy
  end
end
