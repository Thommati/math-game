class Game
  attr_reader :turn
  
  def initialize player1, player2, question_factory
    @player1 = player1
    @player2 = player2
    @question_factory = question_factory
    @turn = [@player1, @player2].sample
  end

  def start_game
    puts "\nGame starting"
    
    until game_over?
      puts "\n---- NEW TURN - #{turn} ----"
      puts @question_factory.question_answer[0]
      print "> "
      answer = gets.chomp
      if @question_factory.answer? answer
        puts "Way to go, champ, you got it!"
      else
        puts "Maybe you aren't cut out for this...\n"
        @turn.decrement_lives
      end
      
      print_score
      @question_factory.generate_question_answer
      next_turn
      
    end

    puts "\n------GAME OVER------"
    puts "#{get_winner} wins!"
    puts "Good bye"

  end

  def game_over?
    @player1.lives == 0 || @player2.lives == 0
  end

  def get_winner
    if @player1.lives > 0
      @player1
    else
      @player2
    end
  end

  def print_score
    puts "#{@player1}: #{@player1.lives}/3 vs #{@player2}: #{@player2.lives}/3"
  end

  def next_turn
    @turn = @turn == @player1 ? @player2 : @player1
  end
end

