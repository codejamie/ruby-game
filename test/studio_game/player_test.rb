require 'minitest/autorun'

require_relative "../../lib/studio_game/player"

class PlayerTest < Minitest::Test

    def setup
      @player = Player.new("fred", 100)
    end

    def test_has_a_capitalized_name
      assert_equal "Fred", @player.name 
    end

    def test_has_an_initial_health
      assert_equal 100, @player.health 
    end

    def test_computes_score_as_sum_of_health_and_name_length
      assert_equal 104, @player.score
    end

    def test_has_a_string_representation
      assert_equal "I'm Fred with a health of 100 and a score of 104", @player.to_s
    end

    def test_increases_health_by_15_when_boosted
      assert_equal 115, @player.boost
    end

    def test_decreases_health_by_10_when_drained
      assert_equal 90, @player.drain
    end

end
