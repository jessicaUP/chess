
require_relative "piece"


class Board

    attr_accessor :board

    def initialize
        @board = Array.new(8) { Array.new(8) }
        self.place_pieces
    end

    def place_pieces
        board.each_with_index do |row, row_idx|
            row.each_with_index do |spot, col_idx|
                if (0..1).include?(row_idx) || (6..7).include?(row_idx)
                    pos = [row_idx, col_idx]
                    self[pos] = Piece.new(:white, self, pos) #(pos)
                end
            end
        end
    end

    def [](pos_arr)  # [0,5]
        row = pos_arr[0]
        column = pos_arr[1]
        board[row][column]
    end

    def []=(pos_arr, piece)
        row = pos_arr[0]
        column = pos_arr[1]
        board[row][column] = piece
    end

    def move_piece(start_pos, end_pos)

        play_piece = self[start_pos]

        raise "No piece at this location" if empty?(start_pos) 
        raise "location not on board" if !in_bound?(start_pos) || !in_bound?(end_pos)
        self[start_pos] = nil   # NullPiece.new
        self[end_pos] = play_piece

    end

    def empty?(position)
        self[position].nil?    # is_a?(NullPiece)
    end

    def in_bound?(position)
        (0..7).include?(position[0]) || (0..7).include?(position[1])
    end
end

