describe "Integers" do

  it "have methods (just like all objects)" do
    1.should respond_to :+
  end

  it "can use underscores, to be easy on the eyes" do
    1_000_000.should eq 1000000
  end

  it "can be added" do
    (1 + 2).should eq 3
  end

  it "can be subtracted" do
    (1-1).should eq 0
  end

  it "can be multiplied" do
    (2*2).should eq 4
  end

  it "support exponentiation" do
    (2**2).should eq 4
  end

  it "support modulo" do
    (5%2).should eq 1
  end  

  it "are usually of class Fixnum" do
    3.class.should eq Fixnum
  end

  it "that are are very large are of class Bignum" do
    (365000**853).class.should eq Bignum
  end

  it "are returned from Integers calculations" do
    (3+6*5).should be_a Integer
  end

end

describe "Floats" do

  it "have their own class" do
    (1.0).should be_a Float
  end

  it "are returned when calculations include a Float" do
    (1.0*3).should be_a Float
  end

end

describe "Other Ruby classes" do

  it "ADD ANY EXAMPLE THAT TESTS A Rational, Complex OR BigDecimal value" do
    2.to_r.class.should eq Rational
  end

end