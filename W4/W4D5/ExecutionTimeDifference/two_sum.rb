def bad_two_sum?(arr, target_sum)
  (0...arr.length-1).each do |i|
    (i+1...arr.length).each do |j|
      return true if arr[i] + arr[j] == target_sum
    end
  end
  false
end
# O(n^2)

#O(n^2)

def okay_two_sum?(arr, target_sum)
  
  arr.sort
  targets = []
  arr.each do |n|
    targets << target_sum - n    
  end

  targets.bsearch {|ele| arr.include?(ele)}.nil?
end

# targets = [20,19,15,10,13,7]
# arr = [0, 1, 5, 10, 7,13]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false
arr = [0, 1, 5, 10, 7, 13]
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false