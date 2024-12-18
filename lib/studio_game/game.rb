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

  def play(rounds = 3)
    puts "\n*** Treasures ***"
    TreasureTrove::TREASURES.each do |t|
      puts "A #{t.name} - #{t.icon} is worth #{t.points} points."
    end 

    1.upto(rounds) do |r|
      puts "\nRound: #{r}"

      puts "\nBefore playing:"
      puts @players

      puts "\nLet's play #{@title}!"
      puts "*".center(30)

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

        player.found_treasure(treasure.name, treasure.points)

      end
    end

    puts "\nAfter playing:"
    puts @players
  end
end