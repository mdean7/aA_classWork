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

def my_transpose(arr)
  arr.transpose 
end

def stock_picker(arr) 
    most_profit = 0
    result = []

    (0...arr.length - 1).each do |i|
      (i+1...arr.length).each do |j|
        profit =  arr[j] - arr[i]
          if profit > most_profit
            most_profit = profit            
            result = [i, j] 
         end
      end
    end

    " Buy on day #{result[0]+1} and sell on day #{result[1]+1}"
end

