require 'spell_number/speller'
require 'i18n'

module SpellNumber
  
  I18n.load_path << Dir[File.join(File.dirname(__FILE__), '..', 'locales', '*.{rb,yml}').to_s]
  
  def self.number_to_words(number, options = {})
    Speller.new(options).number_to_words(number)
  end
  
end