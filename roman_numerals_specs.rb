require_relative 'roman_numerals.rb'

describe 'Roman numeral specs' do
  subject = RomanNumerals.new

  it 'translates 1' do
    subject.translate(1) == 'i'
  end

end
