require 'rspec.rb'
require_relative 'roman_numerals.rb'

describe 'When converting roman numerals into normal numbers' do
  subject = RomanNumerals.new

  it 'converts 1' do
    subject.convert(1).should == 'i'
  end

  it 'converts 2' do
    subject.convert(2).should == 'ii'
  end

  it 'converts 3' do
    subject.convert(3).should == 'iii'
  end

  it 'converts 4' do
    subject.convert(4).should == 'iv'
  end

  it 'converts 5' do
    subject.convert(5).should == 'v'
  end

end
