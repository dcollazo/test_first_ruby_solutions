require "temperature"

describe "temperature conversion functions" do

  describe "#ftoc" do

    it "converts freezing temperature" do
      ftoc(32).should == 0
    end

    it "converts boiling temperature" do
      ftoc(212).should == 100
    end

    it "converts body temperature" do
      ftoc(98.6).should == 37
    end

    it "converts arbitrary temperature" do
      ftoc(68).should == 20
    end
  end

  describe "#ctof" do

    it "converts freezing temperature" do
      ctof(0).should == 32
    end

    it "converts boiling temperature" do
      ctof(100).should == 212
    end

    it "converts arbitrary temperature" do
      ctof(20).should == 68
    end

    it "converts body temperature" do
      ctof(37).should be_within(0.1).of(98.6)
    end
  end
end