# https://app.codility.com/programmers/lessons/4-counting_elements/max_counters/

def solution(n, a)
  # write your code in Ruby 2.2
  counter = Array.new(n,0)
  max = 0
  max_to_set = 0
  
  a.each do |position|
    if position > n
      max_to_set = max
    else
      counter[position-1] = max_to_set if counter[position-1] < max_to_set
      counter[position-1] += 1
      max = counter[position-1] if counter[position-1] > max
    end
  end
  
  counter.each_with_index { |value,i| counter[i] = max_to_set if value < max_to_set }
  return counter
end
