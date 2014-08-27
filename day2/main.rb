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
    pairings = self.split_into_pairs(members)
    pairing_hash = self.array_to_hash(pairings)
    inverted_hash = self.invert_hash(pairing_hash)
    final_pairings = self.merge_hashes(pairing_hash, inverted_hash)
  end
  
  # Randomize the list and separate into pairs
  # 
  # members - Array containing member names
  #
  # Examples
  #
  #   split_into_pairs(members)
  #   # => [["Sumeet Jain", "Beth Haubert"], ["Sachin Jain", "Suneel Jain"], ... etc.]
  #
  # Returns an Array of Arrays of matched pairs
  def self.split_into_pairs(members)
    members.shuffle.each_slice(2).to_a
  end
  
  # Converts the pairings Array into a Hash
  #
  # pairings - an Array of Arrays of matched pairs (computed via self.split_into_pairs)
  #
  # Examples
  #
  #   array_to_hash(pairings)
  #   # => {"Sumeet Jain" => "Prisha Gupta", "Beth Haubert" => "Sachin Jain", etc ...}
  #
  # Returns a Hash with the matched pairs
  def self.array_to_hash(pairings)
    Hash[pairings]
  end
  
  # Inverts the pairing Hash
  #
  # pairing_hash - a Hash of matched pairs
  #
  # Examples
  #
  #   invert_hash(pairing_hash)
  #   # => {"Sachin Jain" => "Beth Haubert", "Prisha Gupta" => "Sumeet Jain" etc ...}
  #
  # Returns a Hash with the matched pairs inverted from the input
  def self.invert_hash(pairing_hash)
    pairing_hash.invert
  end
  
  # Merges the pairings_hash and the inverted hash
  #
  # pairing_hash - a Hash of matched pairs
  # inverted_hash - pairing_hash inverted
  #
  # Examples
  #
  #   mergh_hashes(pairing_hash, inverted_hash)
  #   # => {"Sumeet Jain" => "Prisha Gupta", "Beth Haubert" => "Sachin Jain", "Sachin Jain" => "Beth Haubert", "Prisha Gupta" => "Sumeet Jain", etc ...}
  #
  # Returns a merged Hash with each member assigned to a key and each member assigned to a value
  def self.merge_hashes(pairing_hash, inverted_hash)
    pairing_hash.merge(inverted_hash)
  end
  
  # Validates whether any of the pairs have matching last names
  #
  # pairings - an Array of matched pairs
  #
  # Examples
  #
  #   verify_last_name([[Sachin Jain", "Beth Haubert"], ["Prisha Gupta", "Sumeet Jain"] etc ...]
  #   # => true
  #
  # Returns true if all of the given pairs have different last names
  def self.valid_pairs?(pairings)
    validated_pairings = []
    pairings.each do |p| #p is an array holding two strings (the matches)
      match1 = /(\w*)\s(\w*)/.match(p[0]) # returns a MatchData object with the first name at match1[1] and last name at match1[2]
      match2 = /(\w*)\s(\w*)/.match(p[1]) # returns a MatchData object with the first at match2[1] and last name at match2[2]
      
      if match1[2] != match2[2]
        validated_pairings << p
      else
      end
    end
      
    if validated_pairings == pairings
      true
    else
      false
    end

  end
  
  #checks that everyone is assigned to another member
  #
  #Returns true if everyone is assigned, false if people remain unassigned
  def self.everyone_assigned?
  end
  
end

binding.pry