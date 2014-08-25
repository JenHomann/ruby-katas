require "spec_helper"

describe Sum do
    
  it "should return an input, if given only one input" do
    num = 2
    expect(Sum.add(2)).to eq(2)
  end
  
  it "should return the sum of two numbers, input as a string"
  
  it "should return the sum of multiple numbers, input as a string"


  # it "should sum a given plant's yields" do
  #   a = Plant.create({name: "apple", fruitbearing: 0})
  #   b = Yield.create({plant_id: 1, number: 20})
  #   expect(Plant.find(1).total).to eq(20)
  # end
end