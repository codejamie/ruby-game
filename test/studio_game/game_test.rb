require 'minitest/autorun'

require_relative "../../lib/studio_game/game"
require_relative "../../lib/studio_game/player"

class GameTest < Minitest::Test

  def setup
    @game = Game.new("A new game")
    
    @player_1 = Player.new("A", 60)
    @player_2 = Player.new("B", 75)

    $stdout = StringIO.new
  end

  def test_has_no_players_initially
    assert_empty @game.players
  end

  def test_players_can_be_added_to_the_game
    @game.add_player(@player_1)

    assert "A", @player_1.name
  end
  
  def test_boosts_player_if_high_number_rolled 
    @game.add_player(@player_1)
    @game.stub(:roll_die, 6) do
      @game.play
      assert_equal 75, @player_1.health
    end
  end

  def test_skips_player_if_medium_number_rolled 
    @game.add_player(@player_1)
    @game.stub(:roll_die, 3) do
      @game.play
      assert_equal 60, @player_1.health
    end
  end

  def test_drains_player_if_low_number_rolled
    @game.add_player(@player_1)
    @game.stub(:roll_die, 1) do
      @game.play
      assert_equal 50, @player_1.health
    end
  end
    # 
    # 

end