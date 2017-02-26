class Attack
  def initialize(move)
  end

  def call
    return unless defender
    Board.
  end

  private

  def defender
    @defender ||= Baord.pieces.detect(&method(:collision?))
  end

  def collision?(possible_defender)
    piece.x == move.new_x &&
      piece.y == move.new_y
  end
end
