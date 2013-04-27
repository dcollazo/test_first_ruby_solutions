require "hello"

describe "hello" do
  it "should output a greeting" do
    hello.should == "Hello"
  end
end

describe "greet" do
  it "should greet a specific person" do
    greet('David').should == "Hello David"
  end

  it "should greet other people" do
    greet('Jon').should == "Hello Jon"
  end
end
