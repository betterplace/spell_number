require 'spell_number/speller'

module SpellNumber
  
  def self.number_to_words(number, options = {})
    Speller.new(options).number_to_words(number)
  end
  
end