require "tdd.rb"

describe "my_uniq" do
  it "Removes duplicates in array" do
    expect(my_uniq([1,2,3,3])).to eq([1,2,3])
  end
end


#[1, 2, 1, 3, 3].uniq # => [1, 2, 3]