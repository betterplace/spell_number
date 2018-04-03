require 'spec_helper'

describe "spell numbers in english" do
  def test_number(number, result)
    expect(SpellNumber.number_to_words(number, locale: 'en')).to eq result
  end

  describe "Single digits" do
    it "should transform 1" do
      test_number(1, 'one')
    end

    it "should transform 2" do
      test_number(2, 'two')
    end

    it "should transform 3" do
      test_number(3, 'three')
    end

    it "should transform 4" do
      test_number(4, 'four')
    end

    it "should transform 5" do
      test_number(5, 'five')
    end

    it "should transform 6" do
      test_number(6, 'six')
    end

    it "should transform 7" do
      test_number(7, 'seven')
    end

    it "should transform 8" do
      test_number(8, 'eight')
    end

    it "should transform 9" do
      test_number(9, 'nine')
    end

    it "should transform 10" do
      test_number(0, 'zero')
    end
  end

  describe "Teens" do

    it "should spell 10 as ten" do
      test_number(10, 'ten')
    end

    it "should spell 11 as eleven" do
      test_number(11, 'eleven')
    end

    it "should spell 12 as twelve" do
      test_number(12, 'twelve')
    end

    it "should spell 13 as thirteen" do
      test_number(13, 'thirteen')
    end

    it "should spell 14 as fourteen" do
      test_number(14, 'fourteen')
    end

    it "should spell 15 as fifteen" do
      test_number(15, 'fifteen')
    end

    it "should spell 16 as sixteen" do
      test_number(16, 'sixteen')
    end

    it "should spell 17 as seventeen" do
      test_number(17, 'seventeen')
    end

    it "should spell 18 as eighteen" do
      test_number(18, 'eighteen')
    end

    it "should spell 19 as nineteen" do
      test_number(19, 'nineteen')
    end
  end

  describe "Twenties" do

    it "should spell 20 as twenty" do
      test_number(20, 'twenty')
    end

    it "should spell 21 as twenty-one" do
      test_number(21, 'twenty-one')
    end

    it "should spell 22 as twenty-two" do
      test_number(22, 'twenty-two')
    end

    it "should spell 23 as twenty-three" do
      test_number(23, 'twenty-three')
    end

    it "should spell 24 as twenty-four" do
      test_number(24, 'twenty-four')
    end

    it "should spell 25 as twenty-five" do
      test_number(25, 'twenty-five')
    end

    it "should spell 26 as twenty-six" do
      test_number(26, 'twenty-six')
    end

    it "should spell 27 as twenty-seven" do
      test_number(27, 'twenty-seven')
    end

    it "should spell 28 as twenty-eight" do
      test_number(28, 'twenty-eight')
    end

    it "should spell 29 as twenty-nine" do
      test_number(29, 'twenty-nine')
    end
  end

  describe "Thirties" do
    it "should spell 30 as thirty" do
      test_number(30, 'thirty')
    end

    it "should spell 33 as thirty-three" do
      test_number(33, 'thirty-three')
    end
  end

  describe "Fourties" do
    it "should spell 40 as fourty" do
      test_number(40, 'fourty')
    end

    it "should spell 44 as fourty-four" do
      test_number(44, 'fourty-four')
    end
  end

  describe "Fifties" do
    it "should spell 50 as fifty" do
      test_number(50, 'fifty')
    end

    it "should spell 55 as fifty-five" do
      test_number(55, 'fifty-five')
    end
  end

  describe "Sixties" do
    it "should spell 60 as sixty" do
      test_number(60, 'sixty')
    end

    it "should spell 66 as sixty-six" do
      test_number(66, 'sixty-six')
    end
  end

  describe "Seventies" do
    it "should spell 70 as seventy" do
      test_number(70, 'seventy')
    end

    it "should spell 77 as seventy-seven" do
      test_number(77, 'seventy-seven')
    end
  end

  describe "Eighties" do
    it "should spell 80 as eighty" do
      test_number(80, 'eighty')
    end

    it "should spell 88 as eighty-eight" do
      test_number(88, 'eighty-eight')
    end
  end

  describe "Nineties" do
    it "should spell 90 as ninety" do
      test_number(90, 'ninety')
    end

    it "should spell 99 as ninety-nine" do
      test_number(99, 'ninety-nine')
    end
  end

  describe "Hundreds" do
    it "should spell 100 as one hundred" do
      test_number(100,  'one hundred')
    end

    it "should spell 101 as one hundred and one" do
      test_number(101,  'one hundred and one')
    end

    it "should spell 111 as one hundred and eleven" do
      test_number(111, 'one hundred and eleven')
    end

    it "should spell 155 as one hundred and fifty-five" do
      test_number(155, 'one hundred and fifty-five')
    end

    it "should spell 190 as one hundred and ninety" do
      test_number(190, 'one hundred and ninety')
    end

    it "should spell 200 as two hundred" do
      test_number(200, 'two hundred')
    end

    it "should spell 222 as two hundred and twenty-two" do
      test_number(222, 'two hundred and twenty-two')
    end

    it "should spell 999 as nine hundred and ninety-nine" do
      test_number(999, 'nine hundred and ninety-nine')
    end
  end

  describe "Thousands" do

    it "should spell 1000 as one thousand" do
      test_number(1000, 'one thousand')
    end

    it "should spell 1001 as one thousand and one" do
      test_number(1001, 'one thousand and one')
    end

    it "should spell 1011 as one thousand and eleven" do
      test_number(1011, 'one thousand and eleven')
    end

    it "should spell 1100 as one thousand, one hundred" do
      test_number(1100, 'one thousand, one hundred')
    end

    it "should spell 1111 as one thousand, one hundred and one" do
      test_number(1111, 'one thousand, one hundred and eleven')
    end

    it "should spell 999,999 as nine hundred ninety-nine thousand, nine hundred and ninety-nine" do
      test_number(999999, 'nine hundred and ninety-nine thousand, nine hundred and ninety-nine')
    end

  end

  describe "Millions" do

    it "should spell 1.000.000 as one million" do
      test_number(1000000, 'one million')
    end

    it "should spell 1.000.001 as one million and one" do
      test_number(1000001, 'one million and one')
    end

    it "should spell 1.000.011 as one million and eleven" do
      test_number(1000011, 'one million and eleven')
    end

    it "should spell 1.000.100 as one million, one hundred" do
      test_number(1000100, 'one million, one hundred')
    end

    it "should spell 1.000.111 as one million, one hundred and eleven" do
      test_number(1000000, 'one million')
    end

    it "should spell 1.001.111 as one million, one thousand, one hundred and eleven" do
      test_number(1001111, 'one million, one thousand, one hundred and eleven')
    end

    it "should spell 999.999.999.999 as nine hundred ninety-nine thousand million, nine hundred ninenty-nine thousand, nine hundred and ninety-nine" do
      test_number(999999999999, 'nine hundred and ninety-nine thousand, nine hundred and ninety-nine million, nine hundred and ninety-nine thousand, nine hundred and ninety-nine')
    end

  end

end
