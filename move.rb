class Move
  def initialize(piece, delta_x, delta_y)
  end

  def call
    if valid_attack?
      Board.pieces.remove(defender)
      piece.new_position(new_x, new_y)
    elsif valid_move?
      piece.new_position(new_x, new_y)
    else
      InvalidMove
    end
  end

  def valid_move?
    piece.valid_move? && Board.inside?(new_x, new_y)
  end

  def valid_attack?
    piece.valid_attack? && !!defender
  end

  private

  def new_x
    piece.x + delta_x
  end

  def defender
    @defender ||= Baord.piece_on(move.x, move.y)
  end
end
