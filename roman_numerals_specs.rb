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

  it 'converts 6' do
    subject.convert(6).should == 'vi'
  end

  it 'converts 7' do
    subject.convert(7).should == 'vii'
  end

  it 'converts 9' do
    subject.convert(9).should == 'ix'
  end

  it 'converts 10' do
    subject.convert(10).should == 'x'
  end

  it 'converts 12' do
    subject.convert(12).should == 'xii'
  end
end
