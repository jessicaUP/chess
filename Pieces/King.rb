require_relative 'stepable'
class King < Piece
include "Stepable"

    def initialize(color, board, position)
        super(color, board, position)
    end

    moves_diff = [
        [1,0],
        [1,1],
        [-1,1],
        [-1,-1],
        [0,-1],
        [0,1],
        [-1,0],
        [1,-1]
    ]

end