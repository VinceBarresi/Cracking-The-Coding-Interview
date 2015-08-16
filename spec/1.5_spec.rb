require_relative 'spec_helper'
require_relative '../chapter1/1.5'

describe 'compress string' do
  it 'returns characters of a string with their count' do
    str = 'aabbbccdeeee'
    expect(compress_string(str)).to eq('a2b3c2d1e4')
  end
end
