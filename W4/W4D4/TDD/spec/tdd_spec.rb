# require "tdd.rb"

# describe "my_uniq" do

#   it "Removes duplicates in array" do
#     expect(my_uniq([1,2,3,3])).to eq([1,2,3])
#   end

#   it "Should be in the same order as it originally appeared" do
#     expect(my_uniq([1,3,2,3,2])).to eq([1,3,2])
#   end

#   it "Should return an empty array if it receives an empty array" do
#     expect(my_uniq([])).to eq([])
#   end

#   it "should not use the built-in uniq method" do
#     arr = [11, 5, 13, 2, 3]
#     expect_any_instance_of(Array).to_not receive(:uniq)
#     my_uniq(arr)
#   end   

# end

# describe "Array#two_sum" do 

#   it "returns a 2-D array" do 
#     array = [-1, 1, -2, 2]
#     expect(array.two_sum.flatten).to_not eq(array.two_sum)
#   end

#   it "correctly return indices that sum to 0" do 
#     array = [-1, 1, -2, 2]
#     expect(array.two_sum).to eq([[0, 1], [2, 3]])
#   end

#   it "returns empty array if none" do 
#     array = [-1, 4, 2, 3]
#     expect(array.two_sum).to eq([])
#   end

#   it "should not add numbers at the same index" do 
#     array = [0, 1]
#     expect(array.two_sum).to_not eq([[0, 0]])
#   end

# end

# describe "#my_transpose" do 

#   it "transposes correctly" do 
#     rows = [
#     [0, 1, 2],
#     [3, 4, 5],
#     [6, 7, 8]
#   ]

#   expect(my_transpose(rows)).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
#   end

#   it "should transpose with arrays of varying lengths" do
#     rows = [
#       [0, 1, 2],
#       [3, 4, 5],
#       [6, 7]
#     ]

#     expect(my_transpose(rows)).to eq([[0, 3, 6], [1, 4, 7], [2, 5, nil]])
#   end

#   it "Should return an empty array if the input array is empty" do
#     expect(my_transpose([])).to eq([])
#   end
# end

# describe "#stock_picker" do 
#   it "should return the first case of the most profitable day" do 
#     array = [3,2,5,6,1,3,1]

#     expect(stock_picker(array)).to eq(" Buy on day #{2} and sell on day #{4}")
#   end
# end