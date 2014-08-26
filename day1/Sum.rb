require 'pry'

module Sum
  
  def self.add(numbers)
    nums = self.split_into_nums_array(numbers)
    sum = 0
    
    nums.each do |n|
      unless self.negative_input?(numbers) == false
        raise "Negatives not allowed."
      end
      if n.to_i > 1000
        next
      else
        sum = sum + n.to_i
      end
    end
    
    sum
    
  end
  
  def self.split_into_nums_array(numbers)
    nums = numbers.split(/\n/)
  end
  
  def self.negative_input?(numbers)
    nums = self.split_into_nums_array(numbers)
    odd_nums = []
    nums.each do |n|
      if n.to_i < 0
        odd_nums << n
      else
      end
      odd_nums
    end
    
    if odd_nums == []
      false
    else
      true
    end
    
  end
  
end

binding.pry