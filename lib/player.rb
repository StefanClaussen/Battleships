class Player
  # Initializes a new player with her/his name.
  #
  # You will have to create a board in there and randomize the
  # positioning of your ships on the board.

  def initialize name, board=Board.new
    @name = name
    @board = board
  end

  def name
    @name
  end

  def board
    @board
  end

  def has_ships_still_floating?
    @board.include? 's'
  end
end
