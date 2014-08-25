require 'pry'

module Sum
  
  def self.add(numbers)
    nums = numbers.split(', ')
    sum = 0
    nums.each do |n|
      sum = sum + n.to_i
    end
    sum
  end
  
end