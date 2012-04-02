# encoding: utf-8
require 'spell_number'

describe 'spell numbers in german' do
  {
    'Single digits' => {
      1 => 'eins',
      2 => 'zwei',
      3 => 'drei',
      4 => 'vier',
      5 => 'fünf',
      6 => 'sechs',
      7 => 'sieben',
      8 => 'acht',
      9 => 'neun',
      0 => 'null'
    },
    'Teens' => {
      10 => 'zehn',
      11 => 'elf',
      12 => 'zwölf',
      13 => 'dreizehn',
      14 => 'vierzehn',
      15 => 'fünfzehn',
      16 => 'sechzehn',
      17 => 'siebzehn',
      18 => 'achtzehn',
      19 => 'neunzehn'
    },
    'Twenties' => {
      20 => 'zwanzig',
      21 => 'einundzwanzig',
      22 => 'zweiundzwanzig',
      23 => 'dreiundzwanzig',
      24 => 'vierundzwanzig',
      25 => 'fünfundzwanzig',
      26 => 'sechsundzwanzig',
      27 => 'siebenundzwanzig',
      28 => 'achtundzwanzig',
      29 => 'neunundzwanzig'
    },
    'Thirties' => {
      30 => 'dreissig',
      33 => 'dreiunddreissig'
    },
    'Fourties' => {
      40 => 'vierzig',
      44 => 'vierundvierzig'
    },
    'Fifties' => {
      50 => 'fünfzig',
      55 => 'fünfundfünfzig'
    },
    'Sixties' => {
      60 => 'sechzig',
      66 => 'sechsundsechzig'
    },
    'Seventies' => {
      70 => 'siebzig',
      77 => 'siebenundsiebzig'
    },
    'Eighties' => {
      80 => 'achtzig',
      88 => 'achtundachtzig'
    },
    'Nineties' => {
      90 => 'neunzig',
      99 => 'neunundneunzig'
    },
    'Hundreds' => {
      100 => 'einhundert',
      101 => 'einhunderteins',
      111 => 'einhundertelf',
      155 => 'einhundertfünfundfünfzig',
      190 => 'einhundertneunzig',
      200 => 'zweihundert',
      222 => 'zweihundertzweiundzwanzig',
      999 => 'neunhundertneunundneunzig'
    },
    'Thousands' => {
      1000   => 'eintausend',
      1001   => 'eintausendeins',
      1011   => 'eintausendelf',
      1100   => 'eintausendeinhundert',
      1111   => 'eintausendeinhundertelf',
      999999 => 'neunhundertneunundneunzigtausendneunhundertneunundneunzig'
    },
    'Millions' => {
      1000000      => 'eine Million',
      1000001      => 'eine Million und eins',
      1000011      => 'eine Million und elf',
      1000100      => 'eine Million und einhundert',
      1000111      => 'eine Million und einhundertelf',
      1001111      => 'eine Million und eintausendeinhundertelf',
      999999999999 => 'neunhundertneunundneunzigtausendneunhundertneunundneunzig Millionen und neunhundertneunundneunzigtausendneunhundertneunundneunzig'
    }
  }.each_pair do |description, hash|
    send(:describe, description) do
      hash.each_pair do |number, result|
        send(:it, "should spell #{number} as #{result}") {
          SpellNumber.number_to_words(number, :locale => 'de').should == result
        }
      end
    end
  end
end