 module TreasureTrove
  
  Treasure = Data.define(:name, :points, :icon)

  TREASURES = [
    Treasure.new(name: 'pie', points: 10, icon: '🥧'),
    Treasure.new(name: 'coin', points: 25, icon: '🪙'),
    Treasure.new(name: 'flute', points: 50, icon: '🪈'),
    Treasure.new(name: 'compass', points: 65, icon: '🧭'),
    Treasure.new(name: 'key', points: 80, icon: '🔑'),
    Treasure.new(name: 'crown', points: 90, icon: '👑'),
    Treasure.new(name: 'star', points: 100, icon: '⭐️'),
  ]
  
  def self.random_treasure
    TREASURES.sample
  end

end