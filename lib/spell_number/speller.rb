module SpellNumber
  
  class Speller
    
    def initialize(options = {})
      @options = options
    end
    
    def number_to_words(number)
      return number_with_thousands(number) if(number < 1000000)
      
      rest = number % 1000000
      
      singular = ((number / 1000000) == 1)
      millions = number_with_thousands(number / 1000000)
      rest_in_words = number_with_thousands(rest)
      words = 'not_found'
      
      words = I18n.t("spell_number.formats.millions_singular.#{format_subtype(rest)}", :locale => @options[:locale], 
        :million_count => millions, :rest => rest_in_words, :default => 'not_found') if(singular)
        
      words = I18n.t("spell_number.formats.millions.#{format_subtype(rest)}", :locale => @options[:locale], 
        :million_count => millions, :rest => rest_in_words) if(words == 'not_found')
        
      words
    end

    protected

    def number_with_thousands(number, combined = false)
      return three_digit_number(number, combined) if(number < 1000)
      
      rest = number % 1000
      
      thousands = three_digit_number(number / 1000, true)
      rest_in_words = three_digit_number(rest)
      I18n.t("spell_number.formats.thousands.#{format_subtype(rest)}", :locale => @options[:locale], 
        :thousand_count => thousands, :rest => rest_in_words)
    end

    def three_digit_number(number, combined = false)
      if(number < 100)
        two_digit_number(number, combined)
      else
        rest = number % 100
        format = "spell_number.formats.hundreds.#{rest == 0 ? 'no_rest' : 'rest'}"
        hundreds = simple_number_to_words_combined(number / 100)
        rest = two_digit_number(rest)
        I18n.t(format, :locale => @options[:locale], :hundred_count => hundreds, :rest => rest)
      end
    end

    # Transforms a two-digit number from 0 to 99
    def two_digit_number(number, combined = false)
      words = combined ? simple_number_to_words_combined(number) : simple_number_to_words(number)
      return words if(words != 'not_found')
      
      rest = number % 10
      format = "spell_number.formats.tens.#{rest == 0 ? 'no_rest' : 'rest'}"
      first_digit = simple_number_to_words(number - rest)
      second_digit = simple_number_to_words_combined(rest)
      I18n.t(format, :locale => @options[:locale], :first_digit => first_digit, :second_digit => second_digit)
    end

    # Returns the "combined" number if it exists in the file, otherwise it will return the 
    # simple_number_to_words
    def simple_number_to_words_combined(number)
      words = I18n.t("spell_number.numbers.number_#{number}_combined", :locale => @options[:locale], :default => 'not_found')
      words = simple_number_to_words(number) if(words == 'not_found')
      words
    end

    # Transforms a single-digit number between 0 and 19
    def simple_number_to_words(number)
      I18n.t("spell_number.numbers.number_#{number}", :locale => @options[:locale], :default => 'not_found')
    end
    
    def format_subtype(rest)
      case rest
      when 0
        'no_rest'
      when 1..99
        'two_digit_rest'
      else
        'rest'
      end
    end
  
  end

end