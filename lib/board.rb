class Board

  def initialize
    @space1 = 1
    @space2 = 2
    @space3 = 3
    @space4 = 4
    @space5 = 5
    @space6 = 6
    @space7 = 7
    @space8 = 8
    @space9 = 9
    @moves_counter = 0
  end

  def display_board
    puts """

          Moves: #{@moves_counter}

          #{@space1} | #{@space2} | #{@space3}
          ----------
          #{@space4} | #{@space5} | #{@space6}
          ----------
          #{@space7} | #{@space8} | #{@space9}

         """
  end

  def player1_selection
    puts "Player1, what position would you like to take?"
    take_selection = gets.chomp.to_i
      if take_selection == 1 #&& (@space1 != "X" || "O")
        @space1 = "X"
      elsif take_selection == 2
        @space2 = "X"
      elsif take_selection == 3
        @space3 = "X"
      elsif take_selection == 4
        @space4 = "X"
      elsif take_selection == 5
        @space5 = "X"
      elsif take_selection == 6
        @space6 = "X"
      elsif take_selection == 7
        @space7 = "X"
      elsif take_selection == 8
        @space8 = "X"
      elsif take_selection == 9
        @space9 = "X"
      else
        puts "Not a valid selection, please choose an available position 1-9. > "
        player1_selection
        @moves_counter -=1
      end
    @moves_counter += 1
  end

  def player2_selection
    puts "Player2, what position would you like to take?"
    take_selection = gets.chomp.to_i
    if take_selection == 1
      @space1 = "O"
    elsif take_selection == 2
      @space2 = "O"
    elsif take_selection == 3
      @space3 = "O"
    elsif take_selection == 4
      @space4 = "O"
    elsif take_selection == 5
      @space5 = "O"
    elsif take_selection == 6
      @space6 = "O"
    elsif take_selection == 7
      @space7 = "O"
    elsif take_selection == 8
      @space8 = "O"
    elsif take_selection == 9
      @space9 = "O"
    else
        puts "Not a valid selection, please choose an available position 1-9. > "
        player2_selection
        @moves_counter -=1
    end
    @moves_counter += 1
  end

    def win?
      if @space1 == "X" && @space2 == "X" && @space3 == "X"
        puts "Player 1 wins!"
        return true
      elsif @space4 == "X" && @space5 == "X" && @space6 == "X"
        puts "Player 1 wins!"
        return true
      elsif @space7 == "X" && @space8 == "X" && @space9 == "X"
        puts "Player 1 wins!"
        return true
      elsif @space1 == "X" && @space5 == "X" && @space9 == "X"
        puts "Player 1 wins!"
        return true
      elsif @space3 == "X" && @space5 == "X" && @space7 == "X"
        puts "Player 1 wins!"
        return true
      elsif @space1 == "X" && @space4 == "X" && @space7 == "X"
        puts "Player 1 wins!"
        return true
      elsif @space2 == "X" && @space5 == "X" && @space8 == "X"
        puts "Player 1 wins!"
        return true
      elsif @space3 == "X" && @space6 == "X" && @space9 == "X"
        puts "Player 1 wins!"
        return true
      elsif @space1 == "O" && @space2 == "O" && @space3 == "O"
        puts "Player 2 wins!"
        return true
      elsif @space4 == "O" && @space5 == "O" && @space6 == "O"
        puts "Player 2 wins!"
        return true
      elsif @space7 == "O" && @space8 == "O" && @space9 == "O"
        puts "Player 2 wins!"
        return true
      elsif @space1 == "O" && @space5 == "O" && @space9 == "O"
        puts "Player 2 wins!"
        return true
      elsif @space3 == "O" && @space5 == "O" && @space7 == "O"
        puts "Player 2 wins!"
        return true
      elsif @space1 == "O" && @space4 == "O" && @space7 == "O"
        puts "Player 2 wins!"
        return true
      elsif @space2 == "O" && @space5 == "O" && @space8 == "O"
        puts "Player 2 wins!"
        return true
      elsif @space3 == "O" && @space6 == "O" && @space9 == "O"
        puts "Player 2 wins!"
        return true
      elsif @moves_counter == 9
        puts "It's a draw! Nobody wins!"
        return true
      end
    end
end

