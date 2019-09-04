# https://app.codility.com/programmers/lessons/4-counting_elements/perm_check/

def solution(a)
  # write your code in Ruby 2.2
  number_count = Array.new(a.size+1,0)
  a.each do |number|
    return 0 if number < 1 or number > a.length or number_count[number] == 1
    number_count[number] = 1
  end
  return 1
end

