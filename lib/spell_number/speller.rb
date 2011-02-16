module SpellNumber
  
  class Speller
    
    def initialize(options = {})
      @options = options
    end
    
    def number_to_words(number)
      return number_with_thousands(number) if(number < 1000000)
      rest = number % 1000000
      words = number_with_thousands(number / 1000000) << ' million'
      if(rest < 100 && rest != 0)
        words << ' and ' << two_digit_number(rest)
      elsif(rest != 0)
        words << ', ' << number_with_thousands(rest)
      end
      words
    end

    protected

    def number_with_thousands(number)
      return three_digit_number(number) if(number < 1000)
      rest = number % 1000
      words = "#{three_digit_number(number / 1000)} thousand"
      if(rest < 100 && rest != 0)
        words << ' and ' << two_digit_number(rest)
      elsif(rest != 0)
        words << ', ' << three_digit_number(rest) 
      end
      words
    end

    def three_digit_number(number)
      if(number < 100)
        two_digit_number(number)
      else
        rest = number % 100
        words = "#{simple_number_to_words(number / 100)} hundred"
        words << ' and ' << two_digit_number(rest) if(rest != 0)
        words
      end
    end

    # Transforms a two-digit number from 0 to 99
    def two_digit_number(number)
      if(number < 20)
        simple_number_to_words(number)
      else
        rest = number % 10
        words = tens_to_words(number - rest)
        words << '-' << simple_number_to_words(rest) if(rest != 0)
        words
      end
    end

    # This works for numbers 10, 20, 30, ...
    def tens_to_words(number)
      case number
      when 10
        'ten'
      when 20
        'twenty'
      when 30
        'thirty'
      when 40
        'fourty'
      when 50
        'fifty'
      when 60
        'sixty'
      when 70
        'seventy'
      when 80
        'eighty'
      when 90
        'ninety'
      end
    end

    # Transforms a single-digit number between 0 and 19
    def simple_number_to_words(number)
      case number
      when 0
        'zero'
      when 1
        'one'
      when 2
        'two'
      when 3
        'three'
      when 4
        'four'
      when 5
        'five'
      when 6
        'six'
      when 7
        'seven'
      when 8
        'eight'
      when 9
        'nine'
      when 10
        'ten'
      when 11
        'eleven'
      when 12
        'twelve'
      when 13
        'thirteen'
      when 14
        'fourteen'
      when 15
        'fifteen'
      when 16
        'sixteen'
      when 17
        'seventeen'
      when 18
        'eighteen'
      when 19
        'nineteen'
      end
    end
  
  end

end