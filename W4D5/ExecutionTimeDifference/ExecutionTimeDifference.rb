list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

#O(n^2)
def my_min_n2(list)
  small = list[0]
  (1...list.length-1).each do |i|
    (i+1...list.length).each do |j|
      if list[i] < list[j]
        small = list[i] if list[i] < small
      else
        small = list[j] if list[j] < small
      end
    end
  end
  small
end
# O(n)
def my_min_n(list)
 small = list[0]

  (1...list.length).each do |i|
    small = list[i] if list[i] < small
  end

  small
end

list2 = [5, 3, -99,6,8]
  def largest_contiguous_subsum(list2) # => 8
    arr = []
#         n^2
    (0...list2.length).each do |i|
      (i...list2.length).each do |j|
        arr << list2[i..j] 
      end
    end

    large = arr.shift
    arr.each do |ele| #what happens here? 
    large = ele if ele.sum > large.sum #nested loops
    end
    large.sum
  end

list2 = [5, 3, -99, 6, 8] # => 14
# O(n) solution
def largest_contiguous_subsum_n(list2)
  large = 0
  
    list2.inject do |sum, n|
      if (sum + n) > sum
        sum += n                
        large = sum if sum > large
        sum
      else
        sum = 0
      end
    end

 large
end

p "#{my_min_n2(list)} my_min_n2 O(n^2)"
p "#{my_min_n(list)} my_min_n O(n)"
p "#{largest_contiguous_subsum(list2)} largest_contiguous_subsum_n O(n^3)"
p "#{largest_contiguous_subsum_n(list2)} largest_contiguous_subsum_n O(n)"
