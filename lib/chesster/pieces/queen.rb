require_relative 'default'

module Chesster
  module Pieces
    class Queen < Default
      ICONS = { white: "♕", black: "♛" }
    end
  end
end
