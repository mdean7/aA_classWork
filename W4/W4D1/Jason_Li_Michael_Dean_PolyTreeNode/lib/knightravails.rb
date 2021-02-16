require_relative '00_tree_node.rb'


# starting positions: [0,1], [0,6], [7, 1], [7,6]

class KnightPathFinder

    STARTS = [[1,0], [6,0], [1,7], [6, 7]]

    attr_reader :root_node

    def initialize(starting_pos)

        @root_node = PolyTreeNode.new(starting_pos) #@root_node.value = starting_pos
        @considered_positions = [starting_pos]
    end

    def self.valid_moves(pos) #[x,y]
        x = pos[0]
        y = pos[1]
        valid_moves = [
            [x+2, y+1],
            [x+2,y-1],
            [x-2,y+1],
            [x-2,y-1],
            [x+1,y+2],
            [x+1,y-2],
            [x-1,y+2],
            [x-1,y-2]
        ]
    valid_moves.select{|moves| moves[0].between?(0, 7) && moves[1].between?(0, 7)}        
        
    end

    def new_move_positions(pos)
       possible_moves = KnightPathFinder.valid_moves(pos)
     filtered = possible_moves.reject{|move| @considered_positions.include?(move)}
        filtered.each{|moves| @considered_positions << moves}#arr
    end

    def build_move_tree
        queue = [@root_node] # these are polytrees
        
        while queue.length > 0             
            check = queue.shift # the first poly tree in line   
            # return check if check.value == target   
          
            new_move_positions(check.value).each do |move| 
                move_node = PolyTreeNode.new(move) 
                node.add_child(move_node)
                queue.push(move_node)          
           end           
        end        
    end
  
    #part 2
    def find_path(end_pos)
        end_node = @root_node.dfs(end_pos)
        trace_path_back(end_node)
    end

    def trace_path_back(end_node)
        path = []

        curr_node = end_node
        until curr_node.nil?
            path << curr_node.value
            parent = curr_node.parent
            curr_node = parent
        end

        path.reverse
    end

end