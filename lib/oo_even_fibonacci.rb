# Implement your object-oriented solution here!

class EvenFibonacci
  attr_reader :limit
    
  def initialize(limit)
    @limit = limit
  end

  def sum
    sequence = [1, 2]
    i = 0
    next_num = sum = 2
    while next_num < limit
      next_num = sequence[i] + sequence[i+1]
      sequence << next_num
      sum += next_num if next_num<limit && next_num%2==0
      i += 1
    end
    sum
  end
end
