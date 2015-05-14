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
  end

  def display_board
    puts """

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
    if take_selection == 1
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
    end
    end
  end
end

