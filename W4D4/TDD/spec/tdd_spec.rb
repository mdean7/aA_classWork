require "tdd.rb"

describe "my_uniq" do

   it "Removes duplicates in array" do
    expect(my_uniq([1,2,3,3])).to eq([1,2,3])
  end

  it "Should be in the same order as it originally appeared" do
    expect(my_uniq([1,3,2,3,2])).to eq([1,3,2])
  end

  it "Should return an empty array if it receives an empty array" do
    expect(my_uniq([])).to eq([])
  end

  it "should not use the built-in uniq method" do
     arr = [11, 5, 13, 2, 3]
    expect_any_instance_of(Array).to_not receive(:uniq)
     my_uniq(arr)
  end 

end


#[1, 2, 1, 3, 3].uniq # => [1, 2, 3]