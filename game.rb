# game -> move piece
# move -> board piece
# piece -> move (circular!)
# board -> piece
class Game
  def call
    show_introduction
    loop do
      break unless playing?
      get_input
      Move.new(selected_piece, delta_x, delta_y).call
    end
    show_conclusion
  end
end
