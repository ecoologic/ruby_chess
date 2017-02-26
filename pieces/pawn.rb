class Pieces::Pawn < Pieces::AbstractPiece
  INITIAL_PIECES = [
    new(:black, :a, 2), new(:black :b, 2), # ...
    new(:white, :a, 7), new(:white :b, 7)
  ]

  MOVES = [
    Move.new(1, 0),
    Move.new(2, 0, empty_path: true, initial_position: true)
  ]

  ATTACKS = [Move.new(1, 1), Move.new(1, -1)]

  SPECIAL_CELLS = {
    [:a, 8] => BecomeAnotherPiece
  }

  def to_s
    'P'
  end
end
