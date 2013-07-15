require 'rspec.rb'
require_relative 'roman_numerals.rb'

describe 'Roman numeral specs' do
  subject = RomanNumerals.new

  it 'convert 1' do
    subject.convert(1).should == 'i'
  end

end
