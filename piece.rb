class Piece

    attr_accessor :starting_pos, :position, :board, :color

    def initialize(color, board, position)
        @color = color
        @position = position
        @board = board

    end

    def inspect
        "Piece"
    end

    def to_s

    end

    def empty?

    end




end