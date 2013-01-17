describe "Symbols" do

  it "are not like strings, which can have duplicate content in multiple objects" do
    "only_one".object_id.should_not eq "only_one".object_id
  end

  it "only exist once" do
    ("only" + "one").to_sym.object_id.should eq :onlyone.object_id
  end

  it "are of class Symbol" do
    :fish.should be_a Symbol
  end
  
  it "are not the same as a string of the same characters" do
    :fish.should_not eq "fish"
  end
  
  it "are convertable to strings" do
    :fishsticks.to_s.should eq "fishsticks"
  end

  it "are convertable from a string" do
    ("cod" + "fish").to_sym.should eq :codfish
  end

  it "automatically converts to a string when interpolated" do
    $Tom = "Jerry"
    "#{$Tom}".class.should eq String
  end
  
end