# https://app.codility.com/programmers/lessons/3-time_complexity/perm_missing_elem/

def solution(a)
  # write your code in Ruby 2.2
  missing_number = 1
  a.sort.each do |number|
    missing_number += 1 if number == missing_number
  end
  return missing_number
end