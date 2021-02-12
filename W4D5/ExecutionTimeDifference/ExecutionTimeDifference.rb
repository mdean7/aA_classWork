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

def my_min_n(list)
 small = list[0]

  (1...list.length).each do |i|
    small = list[i] if list[i] < small
  end

  small
end

list2 = [5, 3, -99,6,8]
  def  largest_contiguous_subsum(list2) # => 8
    arr = []

    (0...list2.length).each do |i|
      (i...list2.length).each do |j|
        arr << list2[i..j] 
      end
    end
# ^^^^^^^^^^^^^^^^^n!

    large = arr.shift
    arr.each do |ele| #what happens here? n* n!
    large = ele if ele.sum > large.sum #nested loops
    end
    large.sum
  end

    # possible sub-sums
    [5]           # => 5
    [5, 3]        # => 8 --> we want this one
    [5, 3, -99,6,8]    # => 1
    [3]           # => 3
    [3, -7]       # => -4
    [-7]          # => -7

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

# def largest_contiguous_subsum_n(list2)
#   largest = 0
#   current_sum = 0
#   list2.each do |ele|

#     if ele >= 0        
#       current_sum += ele
#       if largest < current_sum 
#         largest = current_sum
#       end
#     else
#       current_sum = 0
#     end
#   end

#   largest
# end


p "#{my_min_n2(list)} O(n^2)"
p "#{my_min_n(list)} O(n)"
p "#{largest_contiguous_subsum(list2)} O(n!..?)"
p "#{largest_contiguous_subsum_n(list2)} O(n)"
