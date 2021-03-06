class Game

  def initialize
    @player_1 = Player.new
    @player_2 = Player.new
    @board = Board.new
  end

  def start
    puts "Let's play tic-tac-toe!"
    @board.display_board
    puts "How many players? (1 or 2) > "
    number_of_players = gets.chomp.to_i
    if number_of_players == 2
      puts "Player1 is X, Player 2 is O"
      while @board.win? == nil
        @board.player1_selection
        @board.display_board
        if @board.win? == true
          play_again?
        end
        @board.player2_selection
        @board.display_board
        if @board.win? == true
          play_again?
        end
      end
    end
    if number_of_players == 1
      puts "Player1 is X, Player 2 (Computer) is O"
      while @board.win? == nil
        @board.player1_selection
        @board.display_board
        if @board.win? == true
          play_again?
        end
        @board.computer_selection
        @board.display_board
        if @board.win? == true
          play_again?
        end
      end
    end
  end

  def play_again?
    puts "Would you like to play again? (yes or no) > "
    response = gets.chomp.downcase
    if response == "yes"
      @board = Board.new
      start
    else
      puts "Thanks for playing! Come back soon!"
      exit
    end
  end
end



