class Pieces::Knight < Pieces::AbstractPiece
  INITIAL_PIECES = [
    new(:black, :b, 8), new(:black :g, 8),
    new(:white, :b, 1), new(:black :g, 1)
  ]

  ATTACKS = MOVES = [
    Move.new(1, 2),
    Move.new(2, 1),
    Move.new(-1, 2),
    Move.new(-2, 1),
    Move.new(-2, -1),
    Move.new(-1, -2)
  ]

  SPECIAL_CELLS = {}

  def to_s
    'K'
  end
end
