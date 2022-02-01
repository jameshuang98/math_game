require './game_master'
require './player'


player1 = Player.new(3, 'Joe')
player2 = Player.new(3, 'Bob')

game = GameMaster.new(player1, player2)

game.start_game