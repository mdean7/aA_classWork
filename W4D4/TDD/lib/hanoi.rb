
class TowersOfHanoi
  attr_reader :towers, :win

  def initialize
    @towers = [[1, 2, 3, 4, 5],[],[]]
    @win = false
    play
  end

  def play
    until win?
      system "clear"
      p towers
      puts "Choose a stack from 1 to 3"
      input = gets.chomp.to_i - 1
      if valid_start_move?(input) 

        dest = nil
        until dest 
          puts "Choose where to put tile from 1 to 3"
          dest = gets.chomp.to_i - 1
          
          if valid_end_move?(input, dest)
            move_piece(input, dest)
          else
            puts "Invalid move please pick a different stack."  
            dest = nil
          end 
        end

      else
        puts "Invalid move please pick a different stack."         
      end
    end
    puts "A winner is you!"
  end


  def valid_start_move?(start_pos)
    if !towers[start_pos].empty? && start_pos.between?(0,2) 
      towers.any? {|tower| tower.empty? || towers[start_pos][0] < tower[0] }
    else
      return false
    end
  end

  def valid_end_move?(start_pos, end_pos)
    (towers[end_pos].empty? || towers[end_pos][0] > towers[start_pos][0]) && end_pos.between?(0, 2)
  end
  

  def win?
    @win = true if towers[1].length == 5 || towers[2].length == 5
  end

  def move_piece(start, endp)
    shift_el = towers[start].shift 
    towers[endp].unshift(shift_el)
  end

end
# :1, 2 , 3, 4, 5
# Keep three arrays, which represents the piles of discs.
#  Pick a representation of the discs to store in the arrays;
#   maybe just a number representing their size. 
#   Don't worry too much about making the user interface pretty.

# # In a loop, prompt the user (using gets) and
#  ask what pile to select a disc from, and where to put it.

# # After each move, check to see if
#  they have succeeded in moving all the discs, 
#  to the final pile. If so, they win!

# # Note: don't worry about testing the UI. 
# Testing console I/O is tricky 
# (don't bother checking gets or puts). Focus on: