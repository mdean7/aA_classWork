def my_uniq(arr)
  arr.uniq
end

class Array 
  def two_sum
    arr = self
    result = []
    (0...arr.length - 1).each do |i|
      (i+1...arr.length).each do |j|
        result << [i, j] if arr[i] + arr[j] == 0
      end
    end

    result
  end
end