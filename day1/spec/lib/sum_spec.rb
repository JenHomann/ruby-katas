require "spec_helper"

describe Sum do
    
  it "should return the sum of two numbers, input as a string" do
    nums = "1\n2"
    expect(Sum.add(nums)).to eq(3)
  end
  
  it "should return one number, input as a string" do
    num = "1"
    expect(Sum.add(num)).to eq(1)
  end

  it "should return zero if no numbers are included in the string" do
    num = ""
    expect(Sum.add(num)).to eq(0)
  end
  
  it "should return the sum of any set of numbers, input as a string" do
    num = "1\n5\n48\n356\n7\n3\n9\n11000\n2"
    expect(Sum.add(num)).to eq(11431)
  end

  it "should raise an error for a negative input" do
    num = "-2"
    expect{Sum.add(num)}.to raise_error(RuntimeError, "Negatives not allowed.")
  end
  
  it "should evaluate an input to see whether any of the numbers are negative" do
    num = "-2"
    expect(Sum.negative_input?(num)).to be true
  end

end