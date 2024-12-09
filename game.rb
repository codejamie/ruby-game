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

p1 = Player.new("finn", 60)
p2 = Player.new("lucy", 100)
p3 = Player.new("jase")
p4 = Player.new("alex", 125)

players = [p1, p2, p3, p4]
players.pop

p5 = Player.new("cole", 75)
players.append(p5)

puts "\nBefore playing:"
puts players

players.each do |player|
  number_rolled = rand(1..6)

  case number_rolled
  when 1..2 
    puts "#{number_rolled}: #{player.name} got drained 😩"
  when 3..4
    puts "#{number_rolled}: #{player.name} got skipped"
  else
    puts "#{number_rolled}: #{player.name} got boosted 😁"
  end
end

puts "\nAfter playing:"
puts players

