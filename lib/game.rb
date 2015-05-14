class Game

  def initialize
    @player_1 = Player.new
    @player_2 = Player.new
    @board = Board.new
  end

  def start
    puts "Let's play tic-tac-toe!"
    @board.display_board
    puts "Player1 is X, Player 2 is O"
    until @board.win? = false
      @board.player1_selection
      @board.display_board
      @board.player2_selection
      @board.display_board
    end
  end
end


