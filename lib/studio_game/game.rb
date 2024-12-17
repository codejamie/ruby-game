require_relative('treasure_trove')

class Game
 
  attr_reader :title, :players

  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(player)
    @players << player
  end

  def roll_die
    rand(1..6)
  end

  def play
    puts "\nLet's play #{@title}!"
    
    TreasureTrove::TREASURES.each do |t|
      puts "A #{t.name} is worth #{t.points} points"
    end

    puts "\nBefore playing:"
    puts @players

    @players.each do |player|
      number_rolled = roll_die

      case number_rolled
      when 1..2 
        player.drain
        puts "Rolled #{number_rolled} - #{player.name} got drained 😩"
      when 3..4
        puts "Rolled #{number_rolled} - #{player.name} got skipped"
      else
        player.boost
        puts "Rolled #{number_rolled} - #{player.name} got boosted 😁"
      end

      treasure = TreasureTrove.random_treasure
      puts "#{player.name} found a #{treasure.name} - #{treasure.icon} - worth #{treasure.points} points!"
    end

    puts "\nAfter playing:"
    puts @players
  end
end