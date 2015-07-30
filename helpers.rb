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
