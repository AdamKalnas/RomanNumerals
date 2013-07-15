class RomanNumerals

  def convert(num)
    @num = num
    roman_numeral = ''
    roman_numeral = convert_tens(@num, roman_numeral)
    roman_numeral = convert_fives(@num, roman_numeral)
    roman_numeral = convert_singles(@num, roman_numeral)
  end


  def convert_tens(num, roman_numeral)
    if num >= 10
      @num -= 10
      roman_numeral = roman_numeral + 'x'
    end
  
    if num == 9
      @num = @num - 9
      roman_numeral = roman_numeral + 'ix'
    end

    roman_numeral
  end

  def convert_fives(num, roman_numeral)
    if num >= 5
      roman_numeral = roman_numeral + 'v'
      @num = @num - 5
    end

    if num == 4
      roman_numeral = roman_numeral + "iv"
      @num = 0
    end

    roman_numeral
  end

  def convert_singles(num, roman_numeral)
    ones = ''
    num.times do
      ones += 'i'
    end
    roman_numeral + ones
  end
end
