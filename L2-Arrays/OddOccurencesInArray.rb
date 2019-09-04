# https://app.codility.com/programmers/lessons/2-arrays/odd_occurrences_in_array/

def solution(a)
  # write your code in Ruby 2.2
  number_count = Hash.new(0) 
  a.each { |i| number_count[i] += 1 }
  
  number_count.each do |num, count|
    return num if count.odd?
  end
end