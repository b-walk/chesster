# TODO:
# - Add a method `Board#empty? which accepts `rank` and `file` parameters and returns `true` if the square is empty, and `false` otherwise

# CLASSIC BOARD MODEL
# 7 ♖ ♘ ♗ ♕ ♔ ♗ ♘ ♖
# 6 ♙ ♙ ♙ ♙ ♙ ♙ ♙ ♙
# 5 . . . . . . . .
# 4 . . . . . . . .
# 3 . . . . . . . .
# 2 . . . . . . . .
# 1 ♟ ♟ ♟ ♟ ♟ ♟ ♟ ♟
# 0 ♜ ♞ ♝ ♛ ♚ ♝ ♞ ♜
# X 0 1 2 3 4 5 6 7
# chess unicode characters are kinda hard to read... might implement color display in the future

module Chesster
  class Board
    def initialize # accept parameters for variants?
      @table = Array.new(8) { Array.new(8) }
    end

    # TABLE ACCESSORS
    # Return the piece at the specified coordinates
    def piece_at(row, col)
      table[row][col]
    end

    # Add a piece to the board at the specified coordinates
    def add(piece, row, col)
      table[row][col] = piece
    end

    # Remove a piece from the board at the specified coordinates
    def remove(row, col)
      table[row][col] = nil
    end

    def empty_at?(row, col)
      table[row][col].nil?
    end

    private

    attr_reader :table
  end
end
