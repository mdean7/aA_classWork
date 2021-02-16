require 'hanoi.rb'

describe TowersOfHanoi do

subject(:game) {TowersOfHanoi.new}

  describe "TowersOfHanoi#initialize" do
    # it "should intitialize correctly" do
    #   expect().to eq()
    it "Should have three arrays" do
      expect(game.towers).to eq([[1, 2, 3, 4, 5],[],[]] )
    end
    end
  end
# end
