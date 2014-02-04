require 'spell_number'

describe 'spell numbers in english' do
  {
    'Single digits' => {
      1 => 'one',
      2 => 'two',
      3 => 'three',
      4 => 'four',
      5 => 'five',
      6 => 'six',
      7 => 'seven',
      8 => 'eight',
      9 => 'nine',
      0 => 'zero'
    },
    'Teens' => {
      10 => 'ten',
      11 => 'eleven',
      12 => 'twelve',
      13 => 'thirteen',
      14 => 'fourteen',
      15 => 'fifteen',
      16 => 'sixteen',
      17 => 'seventeen',
      18 => 'eighteen',
      19 => 'nineteen'
    },
    'Twenties' => {
      20 => 'twenty',
      21 => 'twenty-one',
      22 => 'twenty-two',
      23 => 'twenty-three',
      24 => 'twenty-four',
      25 => 'twenty-five',
      26 => 'twenty-six',
      27 => 'twenty-seven',
      28 => 'twenty-eight',
      29 => 'twenty-nine'
    },
    'Thirties' => {
      30 => 'thirty',
      33 => 'thirty-three'
    },
    'Fourties' => {
      40 => 'fourty',
      44 => 'fourty-four'
    },
    'Fifties' => {
      50 => 'fifty',
      55 => 'fifty-five'
    },
    'Sixties' => {
      60 => 'sixty',
      66 => 'sixty-six'
    },
    'Seventies' => {
      70 => 'seventy',
      77 => 'seventy-seven'
    },
    'Eighties' => {
      80 => 'eighty',
      88 => 'eighty-eight'
    },
    'Nineties' => {
      90 => 'ninety',
      99 => 'ninety-nine'
    },
    'Hundreds' => {
      100 => 'one hundred',
      101 => 'one hundred and one',
      111 => 'one hundred and eleven',
      155 => 'one hundred and fifty-five',
      190 => 'one hundred and ninety',
      200 => 'two hundred',
      222 => 'two hundred and twenty-two',
      999 => 'nine hundred and ninety-nine'
    },
    'Thousands' => {
      1000   => 'one thousand',
      1001   => 'one thousand and one',
      1011   => 'one thousand and eleven',
      1100   => 'one thousand, one hundred',
      1111   => 'one thousand, one hundred and eleven',
      999999 => 'nine hundred and ninety-nine thousand, nine hundred and ninety-nine'
    },
    "Millions" => {
      1000000      => 'one million',
      1000001      => 'one million and one',
      1000011      => 'one million and eleven',
      1000100      => 'one million, one hundred',
      1000111      => 'one million, one hundred and eleven',
      1001111      => 'one million, one thousand, one hundred and eleven',
      999999999999 => 'nine hundred and ninety-nine thousand, nine hundred and ninety-nine million, nine hundred and ninety-nine thousand, nine hundred and ninety-nine'
    }
  }.each_pair do |description, hash|
    send(:describe, description) do
      hash.each_pair do |number, result|
        send(:it, "should spell #{number} as #{result}") {
          SpellNumber.number_to_words(number, :locale => 'en').should == result
        }
      end
    end
  end
end