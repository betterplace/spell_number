# encoding: utf-8
require 'spell_number'

describe "spell numbers in german" do  
  
  def test_number(number, result)
    SpellNumber.number_to_words(number, :locale => 'de').should == result
  end
  
  describe "Single digits" do
    it "should transform 1" do
      test_number(1, 'eins')
    end
  
    it "should transform 2" do
      test_number(2, 'zwei')
    end
  
    it "should transform 3" do
      test_number(3, 'drei')
    end
  
    it "should transform 4" do
      test_number(4, 'vier')
    end
  
    it "should transform 5" do
      test_number(5, 'fünf')
    end
  
    it "should transform 6" do
      test_number(6, 'sechs')
    end
  
    it "should transform 7" do
      test_number(7, 'sieben')
    end
  
    it "should transform 8" do
      test_number(8, 'acht')
    end
  
    it "should transform 9" do
      test_number(9, 'neun')
    end
  
    it "should transform 10" do
      test_number(0, 'null')
    end
  end
  
  describe "Teens" do 
    
    it "should spell 10 as zehn" do
      test_number(10, 'zehn')
    end
    
    it "should spell 11 as elf" do
      test_number(11, 'elf')
    end
    
    it "should spell 12 as zwölf" do
      test_number(12, 'zwölf')
    end
    
    it "should spell 13 as dreizehn" do
      test_number(13, 'dreizehn')
    end
    
    it "should spell 14 as vierzehn" do
      test_number(14, 'vierzehn')
    end
    
    it "should spell 15 as fünfzehn" do
      test_number(15, 'fünfzehn')
    end
    
    it "should spell 16 as sechzehn" do
      test_number(16, 'sechzehn')
    end
    
    it "should spell 17 as siebzehn" do
      test_number(17, 'siebzehn')
    end
    
    it "should spell 18 as achtzehn" do
      test_number(18, 'achtzehn')
    end
    
    it "should spell 19 as neunzehn" do
      test_number(19, 'neunzehn')
    end
  end

  describe "Twenties" do

    it "should spell 20 as zwanzig" do
     test_number(20, 'zwanzig')
    end

    it "should spell 21 as einundzwanzig" do
     test_number(21, 'einundzwanzig')
    end

    it "should spell 22 as zweiundzwanzig" do
     test_number(22, 'zweiundzwanzig')
    end

    it "should spell 23 as dreiundzwanzig" do
     test_number(23, 'dreiundzwanzig')
    end

    it "should spell 24 as vierundzwanzig" do
     test_number(24, 'vierundzwanzig')
    end

    it "should spell 25 as fünfundzwanzig" do
     test_number(25, 'fünfundzwanzig')
    end

    it "should spell 26 as sechsundzwanzig" do
     test_number(26, 'sechsundzwanzig')
    end

    it "should spell 27 as siebenundzwanzig" do
     test_number(27, 'siebenundzwanzig')
    end

    it "should spell 28 as achtundzwanzig" do
     test_number(28, 'achtundzwanzig')
    end

    it "should spell 29 as neunundzwanzig" do
     test_number(29, 'neunundzwanzig')
    end
  end

  describe "Thirties" do   
    it "should spell 30 as dreissig" do
      test_number(30, 'dreissig')
    end
    
    it "should spell 33 as dreiundreissig" do
      test_number(33, 'dreiunddreissig')
    end    
  end
  
  describe "Fourties" do  
    it "should spell 40 as vierzig" do
      test_number(40, 'vierzig')
    end
    
    it "should spell 44 as vierundvierzig" do
      test_number(44, 'vierundvierzig')
    end  
  end
  
  describe "Fifties" do    
    it "should spell 50 as fünfzig" do
      test_number(50, 'fünfzig')
    end
    
    it "should spell 55 as fünfundfünfzig" do
      test_number(55, 'fünfundfünfzig')
    end 
  end
  
  describe "Sixties" do    
    it "should spell 60 as sechzig" do
      test_number(60, 'sechzig')
    end
    
    it "should spell 66 as sechsundsechzig" do
      test_number(66, 'sechsundsechzig')
    end 
  end
  
  describe "Seventies" do    
    it "should spell 70 as siebzig" do
      test_number(70, 'siebzig')
    end
    
    it "should spell 77 as siebenundsiebzig" do
      test_number(77, 'siebenundsiebzig')
    end 
  end
  
  describe "Eighties" do    
    it "should spell 80 as achtzig" do
      test_number(80, 'achtzig')
    end
    
    it "should spell 88 as achtundachtzig" do
      test_number(88, 'achtundachtzig')
    end 
  end
  
  describe "Nineties" do    
    it "should spell 90 as neunzig" do
      test_number(90, 'neunzig')
    end
    
    it "should spell 99 as neunundneunzig" do
      test_number(99, 'neunundneunzig')
    end 
  end

  
  describe "Hundreds" do
    it "should spell 100 as einhundert" do
      test_number(100, 'einhundert')
    end
    
    it "should spell 101 as einhundertundeins" do
      test_number(101, 'einhunderteins')
    end
    
    it "should spell 111 as einhundertundelf" do
      test_number(111, 'einhundertelf')
    end
    
    it "should spell 155 as einhundertundfünfundfünfzig" do
      test_number(155, 'einhundertfünfundfünfzig')
    end
    
    it "should spell 190 as einhundertneunzig" do
      test_number(190, 'einhundertneunzig')
    end
    
    it "should spell 200 as zweihundert" do
      test_number(200, 'zweihundert')
    end
    
    it "should spell 222 as zweihundertzeiundzwanzig" do
      test_number(222, 'zweihundertzweiundzwanzig')
    end
    
    it "should spell 999 as neunhundertneunundneunzig" do
      test_number(999, 'neunhundertneunundneunzig')
    end
  end

  describe "Thousands" do
    
    it "should spell 1000 as eintausend" do
      test_number(1000, 'eintausend')
    end
    
    it "should spell 1001 as eintausendeins" do
      test_number(1001, 'eintausendeins')
    end
    
    it "should spell 1011 as eintausendelf" do
      test_number(1011, 'eintausendelf')
    end
    
    it "should spell 1100 as eintausendeinhundert" do
      test_number(1100, 'eintausendeinhundert')
    end
    
    it "should spell 1111 as eintausendeinhundertelf" do
      test_number(1111, 'eintausendeinhundertelf')
    end
    
    it "should spell 999,999 as neunhundertneunundneunzigtausendneunhundertneunundneunzig" do
      test_number(999999, 'neunhundertneunundneunzigtausendneunhundertneunundneunzig')
    end
    
  end


 describe "Millions" do
   
   it "should spell 1.000.000 as eine Million" do
     test_number(1000000, 'eine Million')
   end
   
   it "should spell 1.000.001 as eine Million und eins" do
     test_number(1000001, 'eine Million und eins')
   end
   
   it "should spell 1.000.011 as eine Million und elf" do
     test_number(1000011, 'eine Million und elf')
   end
   
   it "should spell 1.000.100 as eine Million und einhundert" do
     test_number(1000100, 'eine Million und einhundert')
   end
   
   it "should spell 1.000.111 as eine Million und einhundertelf" do
     test_number(1000111, 'eine Million und einhundertelf')
   end
   
   it "should spell 1.001.111 as eine Million und eintausendeinhundertelf" do
     test_number(1001111, 'eine Million und eintausendeinhundertelf')
   end
   
   it "should spell 999.999.999.999 as neunhundertneunundneunzigtausendneunundneunzig Millionen und neunhundertneunundneunzigtausendneunundneunzig" do
     test_number(999999999999, 'neunhundertneunundneunzigtausendneunhundertneunundneunzig Millionen und neunhundertneunundneunzigtausendneunhundertneunundneunzig')
   end
   
 end


end