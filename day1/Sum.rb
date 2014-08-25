require 'pry'

module Sum
  
  def self.add(numbers)
    nums = numbers.split(/\n/)
    sum = 0
    nums.each do |n|
      sum = sum + n.to_i
    end
    sum
  end
  
end

binding.pry