require_relative('lib/studio_game/game.rb')
require_relative('lib/studio_game/player.rb')

player_1 = Player.new("finn", 60)
player_2 = Player.new("lucy", 90)
player_3 = Player.new("jase")
player_4 = Player.new("alex", 125)

game = Game.new("Winner Takes All")
game.add_player(player_1)
game.add_player(player_2)
game.add_player(player_3)
game.add_player(player_4)
game.play(3)

# puts "\n"
# puts "*" * 30

# jp = Player.new("jordan pickford", 50)
# vvd = Player.new("virgil van djyk", 70)

# game2 = Game.new("LFC beat Everton every time")
# game2.add_player(jp)
# game2.add_player(vvd)
# game2.play(3)
