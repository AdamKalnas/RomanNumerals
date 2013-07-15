class RomanNumerals
  def convert(num)
    roman_numeral = ''
    num.times do
      roman_numeral += 'i'
    end
    roman_numeral
  end
end
