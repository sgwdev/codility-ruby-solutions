# https://app.codility.com/programmers/lessons/3-time_complexity/tape_equilibrium/

def solution(a)
  # write your code in Ruby 2.2
  left_sum = a[0]
  right_sum = a.reduce(:+) - a[0]
  min = (right_sum - left_sum).abs

  for i in 1..a.length-2 do
    left_sum += a[i]
    right_sum -= a[i]
    distance = (right_sum - left_sum).abs
    min = distance if distance < min
  end
  
  return min
end