require_relative 'chapter2/linked_list'
require_relative 'chapter2/list_node'

def depth array
  return 0 if array.class != Array
  result = 1
  array.each do |sub_array|
    if sub_array.class == Array
      dimension = depth(sub_array)
      result = dimension + 1 if dimension + 1 > result
    end
  end
  result
end

def gen_random_list list_size
  list = LinkedList.new(list_size)
  rand_arr = gen_random_array(list_size)
  rand_arr.each { |n| list.add(n) }
  list
end

def gen_random_array arr_size
  rand_arr = Array.new
  i = 0
  while i < arr_size - 1
    rand_arr[i] = rand(arr_size)
    i += 1
  end
  rand_arr
end
