require "./game"
require "./player"
require "./question"

player1 = Player.new "Player 1"
player2 = Player.new "Player 2"
question_factory = Question.new

game =  Game.new player1, player2, question_factory
game.start_game
