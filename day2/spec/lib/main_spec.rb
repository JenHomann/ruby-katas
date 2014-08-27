require "spec_helper"

describe GiftExchange do
  
  it "should return pairings as a Hash" do
    members = ["Sumeet Jain", "Beth Haubert"]
    expect(GiftExchange.assign_gift_givers(members)).to be_a(Hash)
  end
  
  it "should split members into pairs and return an Array" do
    members = ["A", "B"]
    expect(GiftExchange.split_into_pairs(members)).to be_an(Array)
  end
  
  it "should convert the pairing Array into a Hash" do
    pairings = [["A", "B"], ["C", "D"]]
    expect(GiftExchange.array_to_hash(pairings)).to be_a(Hash)
  end
    
  it "should invert the pairing_hash Hash" do
    pairing_hash = {"Sumeet Jain" => "Beth Haubert"}
    expect(GiftExchange.invert_hash(pairing_hash)).to eq({"Beth Haubert" => "Sumeet Jain"})
  end
  
  it "should merge the pairing_hash and inverted hash" do
    pairing_hash = {"Sumeet Jain" => "Beth Haubert"}
    inverted_hash = {"Beth Haubert" => "Sumeet Jain"}
    expect(GiftExchange.merge_hashes(pairing_hash, inverted_hash)).to eq({"Sumeet Jain" => "Beth Haubert", "Beth Haubert" => "Sumeet Jain"})
  end
  
  it "should validate whether any pair has matching last names" do
    pairings = [["Sumeet Jain", "Beth Haubert"], ["Sachin Jain", "Suneel Jain"]]
    expect(GiftExchange.valid_pairs?(pairings)).to eq(false)
  end

  it "should validate whether any pair has matching last names, even if middle name is given" do
    pairings = [["Sumeet A Jain", "Suneel M Jain"], ["Beth Haubert", "Prisha Gupta"]]
    expect(GiftExchange.valid_pairs?(pairings)).to eq(false)
  end
  
end