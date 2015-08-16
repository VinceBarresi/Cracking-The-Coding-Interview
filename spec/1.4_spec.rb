require_relative 'spec_helper'
require_relative '../chapter1/1.4'

describe 'string with whitespace replacement' do
  it 'replaces whitespaces with %20' do
    str = 'hello world'
    expect(replace_spaces(str)).to eq('hello%20world')
  end

  it 'replaces whitespaces with %20' do
    str = 'i love programming'
    expect(replace_spaces_without_library(str)).to eq('i%20love%20programming')
  end
end
