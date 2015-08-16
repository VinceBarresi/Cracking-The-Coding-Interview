require_relative 'spec_helper'
require_relative '../chapter1/1.4'

describe 'replace spaces' do
  it 'replaces whitespaces with %20' do
    str = 'hello world'
    expect(replace_spaces(str)).to eq('hello%20world')
  end
end

describe 'replace spaces without library' do
  it 'replaces whitespaces with %20' do
    str = 'i love programming'
    expect(replace_spaces_without_library(str)).to eq('i%20love%20programming')
  end
end
