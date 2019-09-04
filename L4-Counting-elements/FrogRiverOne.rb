# https://app.codility.com/programmers/lessons/4-counting_elements/frog_river_one/

def solution(x, a)
  # write your code in Ruby 2.2
  leaf_number = Array.new(x+1,0)
  leaf_position_sum = (1..x).reduce(:+)
  a.each_with_index do |leaf_position, time|
    if leaf_number[leaf_position] == 0
      leaf_number[leaf_position] = 1
      leaf_position_sum = leaf_position_sum - leaf_position
    end
    return time if leaf_position_sum == 0
  end
  return -1
end
