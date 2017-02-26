class Board
  EMPTY_BOARD = Array.new(8, Array.new(8, NullPiece))

  def inside?(x, y)
  end

  def reset
    @pieces = Pieces::ALL.flat_map { |klass| klass::INITIAL_PIECES }.reduce [] do |result, piece|
      result + [piece]
    end
  end

  def piece_on(x, y)
    pieces.detect { |piece| x == piece.x && y == piece.y }
  end

  # needed?
  # def matrix
  #   pieces.reduce EMPTY_BOARD do |result, piece|
  #     result[piece.x, piece.y] = piece
  #   end
  # end
end
