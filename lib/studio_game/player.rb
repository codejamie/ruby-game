class Player
  attr_accessor :name
  attr_reader :health

  def initialize(name, health = 100)
    @name = name.capitalize
    @health = health
  end

  def name=(new_name)
    @name = new_name.capitalize
  end

  def to_s =
    "I'm #{@name} with a health of #{@health} and a score of #{score}"

  def boost
    @health += 15
  end

  def drain
    @health -= 10
  end

  def score
    @score = @health + @name.length
  end
end

if __FILE__ == $0
  player = Player.new("jase")
  puts player.name
  puts player.health
  player.boost
  puts player.health
  player.drain
  puts player.health
end