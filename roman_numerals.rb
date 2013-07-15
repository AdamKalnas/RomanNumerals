class RomanNumerals
  @num = ''

  def convert(num)
    @num = num
    romanNumeral = ''
    romanNumeral += convert_fives(@num, romanNumeral)
    romanNumeral += convert_singles(@num)
  end

  def convert_fives(num, romanNumeral)
    if num > 3
      @num = @num - 5
      romanNumeral = romanNumeral + 'v' 
    end
    romanNumeral
  end

  def convert_singles(num)
    roman_numeral = ''
    num.times do
      roman_numeral += 'i'
    end
    roman_numeral
  end
end
