# TODO:
# - Add a method `Board#[]`which accepts `rank` and `file` parameters and returns @table[rank][file]
# - Add a method `Board#empty? which accepts `rank` and `file` parameters and returns `true` if the square is empty, and `false` otherwise

module Chesster
  class Board
    attr_reader :table

    def initialize ##accept parameters for variants?
      @table = Array.new(8) { Array.new(8) }
    end
  end
end
