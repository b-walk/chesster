# TODO:
# - Add methods that will retrieve the moveset and icons available to a specific kind of piece

# Piece subtypes will inherit behavior from Default
# Default objects are never actually instantiated
module Chesster
  class Default
    ICONS = { white: nil, black: nil }

    def initialize(color)
      @color = color
      @icon = self.class::ICONS[color]
    end
  end
end
