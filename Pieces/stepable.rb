module Stepable

    def moves
        moves = []

        row = position[0]
        column = position[1]
        
        moves_diff.each do |p_pos| #potential position 
            new_row = p_pos[0]
            new_column = p_pos[1]

            new_pos = [ (row + new_row), (column + new_column) ]
            condition_1 = (board.empty?(new_pos) && board.in_bound?(new_pos))
            condition_2 = (board[new_pos].color != self.color && board.in_bound?(new_pos))
            if  condition_1 || condition_2
                moves << new_pos
            end
        end
        moves
    end

    def move_diff  # assume this
        raise "move_diff not implemented"
    end

end