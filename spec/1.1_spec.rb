require_relative 'spec_helper'
require_relative '../chapter1/1.1'

describe 'find unique with data structures' do
  it 'has unique elements' do
    str = 'abcdefghijklmnopqrstuvwxyz'
    str_array = str.split("")
    expect(find_unique_with_data_structures?(str_array)).to be_truthy
  end

  it 'does not have unique elements' do
    str = 'aabbccdd'
    str_array = str.split("")
    expect(find_unique_with_data_structures?(str_array)).to be_falsy
  end
end

describe 'find unique without data structures' do
   it 'has unique elements' do
    str = 'zyxwvutsrqponmlkjighfedcba'
    expect(find_unique_without_data_structures?(str)).to be_truthy
  end

  it 'does not have unique elements' do
    str = 'ddccbbaa'
    expect(find_unique_without_data_structures?(str)).to be_falsy
  end
end
