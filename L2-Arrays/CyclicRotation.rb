# https://app.codility.com/programmers/lessons/2-arrays/cyclic_rotation/

def solution(a, k)
  # write your code in Ruby 2.2
  return a.rotate(a.length-k)
end
