class Pieces::AbstractPiece
  ALL = [Pawn, Knight]

  def initialize(x, y, color)
  end

  def to_s
    color == :white ? super.downcase : super.upcase
  end
end
