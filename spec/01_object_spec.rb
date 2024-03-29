describe 'Everything is an Object!' do

  it "Objects have methods" do
    'two'.methods.should include :upcase
  end

  it "Objects have a class" do
    'two'.class.should eq String
  end

  it "Objects can be sent messages" do
    'two'.send(:upcase).should eq 'TWO'
    # that code sends the message 'upcase' to the string 'two'
    # same result as: 'two'.upcase
  end

  it 'Strings are objects' do
    "Two".should be_a Object
  end

  it 'Numbers are objects' do
    2.should be_a Object
  end

  it 'Hashes are objects' do
    { "life expectancy" => 75}.should be_a Object
  end

  it 'Arrays are objects' do
    [2,4,5].should be_a Object
  end

  it 'Expressions evaluate to objects' do
    "I am found of...".should be_a Object
  end

  it 'Symbols are objects' do
    :should.should be_a Object
  end

  it 'Classes are objects' do
    Class.should be_a Object
  end

  it 'ADD ANY EXAMPLE THAT EVALUATES AN OBJECT' do
    ?a.should be_a Object
  end

end