# https://app.codility.com/programmers/lessons/4-counting_elements/missing_integer/

def solution(a)
  # write your code in Ruby 2.2
  min = 1
  a.sort.each { |number| min += 1 if min == number }
  return min
end
