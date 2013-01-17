
describe "Strings" do
  
  context "created with double quotes" do
    
    it "are valid" do
      "Ruby Course".should eq 'Ruby Course'
    end
    
    it "are of class String" do
      "Ruby".class.should eq String
    end
    
    it "can contain bare single-quote (') characters" do
      'rabbit hair'.should be_a String
    end
    
    it "allow the escape of double quote (\") characters" do
      "The white rabbit said \"hop along, nothing to see here\"".should eq 'The white rabbit said "hop along, nothing to see here"'
    end
    
    it "allow interpolation (Ruby code within the string)" do
      color = "blue"
      "It was a #{color} hippo".should eq 'It was a blue hippo'
    end
    
    it "replace \t with a tab character" do
      "Big\tfish".should eq %{Big\tfish}
    end

    it "ADD AN EXAMPLE THAT TESTS A DIFFERENT ESCAPE SEQUENCE" do
      "\s".should eq " "
    end

    it "replaceS special characters when values are specified at the end via '% [value]'" do
      ("the %s %s %s %d feet, it was %s" % ["flying", "saucer", "spanned", 350, "huge"]).should eq 'the flying saucer spanned 350 feet, it was huge'
    end
    
  end
  
  context "created with single quotes" do
    
    it "are valid" do
      'Alfred E. Newman'.should eq "Alfred E. Newman"
    end
    
    it "are of class String" do
      ''.class.should eq String
    end
    
    it "allow double-quote (\") characters" do
      'single quotes do not mind " marks'.should eq "single quotes do not mind \" marks"
    end

    it "allow the escape of single quote (') characters" do
      'They don\'t mind escapes either'.should eq "They don't mind escapes either"
    end
    
    it "does not interpolate Ruby code" do
      Name1 = "Fred"
      'His name is #{Name1}'.should_not eq "His name is Fred"
    end
    
    it "does not escape newline characters" do
      '\n'.should_not eq "\n"
    end
    
  end

  context "created with Q sequence" do

    it "supports arbitrary delimiters and behave like a double quoted string" do
      %Q@<span style='color:blue'>"1 + 1 = #{1 + 1}"</span>@.should eq '<span style=\'color:blue\'>"1 + 1 = 2"</span>'
    end

    it "can omit the Q and just use %{}" do
      %{used instead of quotes}.should eq "used instead of quotes"
    end

    it "created with the pattern %q supports arbitrary delimiters and behave like a single quoted string" do
      Term = "interpolation"
      %q(acts like single quotes, and doesn't allow for #{Term}).should_not eq 'acts like single quotes, and doesn\'t allow for interpolation'
    end

  end

end