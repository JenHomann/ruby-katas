require 'pry'

module GiftExchange
  # Just a sample list of members for your gift exchange. Feel free to change/ignore.
  #
  # Returns an Array of member names.
  def self.sample_members
    ["Sumeet Jain", "Beth Haubert", "Sachin Jain", "Suneel Jain", "Prisha Gupta", "Richa Goyal", "Arjun Goyal", "Judy Haubert"]
  end

  # Assign members to each other.
  #
  # members - Array containing member names.
  #
  # Examples
  #
  #   assign_gift_givers(sample_members)
  #   # => {"Sumeet Jain" => "Prisha Gupta", "Beth Haubert" => "Sachin Jain", "Sachin Jain" => "Richa Goyal", "Suneel Jain" => "Arjun Goyal", "Prisha Gupta" => "Beth Haubert", ...etc }
  #
  # Returns a Hash with each member's name as a key and the person to whom they should give a gift as the value
  def self.assign_gift_givers(members)
    pairings = members.shuffle.each_slice(2).to_a #randomizes the list, separates into pairs and returns an Array of Arrays, each with a pair of names
    h = Hash[pairings] #creates a Hash of the pairs and assigns it to a local variable, "h"
    i = h.invert #returns the inverse of "h" Hash and assigns it to a local variable, "i"
    final_pairings = h.merge(i) #merges the "h" Hash and "i" Hash into one
  end
  
  #Only assign members to others with different last names
  def self.verify_last_name
  end
  
  #checks that everyone is assigned to another member
  #
  #Returns true if everyone is assigned, false if people remain unassigned
  def self.everyone_assigned?
  end
  
end

binding.pry