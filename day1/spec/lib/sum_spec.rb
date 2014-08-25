require "spec_helper"

describe Sum do
    
  it "should return the sum of two numbers, input as a string" do
    nums = "1, 2"
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
    num = "1, 5, 48, 356, 7, 3, 9, 11000, 2"
    expect(Sum.add(num)).to eq(11431)
  end

end