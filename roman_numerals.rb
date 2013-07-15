class RomanNumerals
  @num = ''

  def convert(num)
    @num = num
    romanNumeral = ''
    romanNumeral += convert_tens(@num, romanNumeral)
    romanNumeral += convert_fives(@num, romanNumeral)
    romanNumeral += convert_singles(@num)
  end


  def convert_tens(num, romanNumeral)
    if num >= 10
      @num -= 10
      romanNumeral = romanNumeral + 'x'
    end
    romanNumeral
  end

  def convert_fives(num, romanNumeral)
    if num >= 5
      romanNumeral = romanNumeral + 'v'
      @num = @num -5
    end

    if num == 4
      romanNumeral = romanNumeral + "iv"
      @num = 0
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
