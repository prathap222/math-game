class Game
  attr_accessor :turn, :player1, :player2

  def initialize
    @turn = 1
    @player1 = 3
    @player2 = 3
  end 

  def start
    puts "Player 1: #{@player1}/3 life. Player 2: #{@player2}/3 life."
    # create_players
    question = Question.new(turn)
    if !question.start
      update_life(turn)
    end
    update_turn(turn)
  end

  def update_turn(turn)
    if turn == 1
      @turn = 2
    else
      @turn = 1
    end
    start
  end

  def update_life(turn)
    if turn == 1
      @player1 -= 1
    else 
      @player2 -= 1
    end
    if @player1 == 0 || @player2 == 0
      game_over
    end
  end

end