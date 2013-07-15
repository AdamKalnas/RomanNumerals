class RomanNumerals
  def convert(num)
    convert_singles(num)
 end

  def convert_singles(num)
    roman_numeral = ''
    num.times do
      roman_numeral += 'i'
    end
    roman_numeral
  end
end
