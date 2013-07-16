class RomanNumerals

  def convert(num)
    @num = num
    roman_numeral = ''
    roman_numeral = convert_digits(@num, 10, roman_numeral)
    roman_numeral = convert_digits(@num, 5, roman_numeral)
    roman_numeral = convert_singles(@num, roman_numeral)
  end


  def convert_digits(number_to_convert, digit_to_convert, roman_numeral)
    if number_to_convert >= digit_to_convert
      @num = @num - digit_to_convert
      roman_numeral = roman_numeral + get_symbol(digit_to_convert)
    end
    convert_special_cases(number_to_convert, roman_numeral)
  end

  def convert_special_cases(num, roman_numeral)
    if num == 9
      @num = @num - 9
      roman_numeral = roman_numeral + 'ix'
    end
    if num == 4
      roman_numeral = roman_numeral + "iv"
      @num = 0
    end
    roman_numeral
  end

  def get_symbol(num)
    case num
      when 10
        'x'
      when 5
        'v'
      else
        ''
    end
  end

  def convert_singles(num, roman_numeral)
    ones = ''
    num.times do
      ones += 'i'
    end
    roman_numeral + ones
  end
end
