# https://app.codility.com/programmers/lessons/1-iterations/binary_gap/

def solution(n)
  # write your code in Ruby 2.2
  count = 0;
  maxBinaryGap = 0;
  numbers = n.to_s(2).split("")
  
  numbers.each do |i|
    if(i.to_i == 0)
      count += 1
    else
      maxBinaryGap = count if count > maxBinaryGap
      count = 0
    end
  end
  return maxBinaryGap
end
