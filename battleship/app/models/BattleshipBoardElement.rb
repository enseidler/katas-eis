class BattleshipBoardElement
  
  #Abstract class! NOT USE!!

  attr_reader :is_water

  #Returns WATER/HIT/SUNK depends on element type
  def get_shoot
    raise 'Should be implemented in subclasses'
  end

end

class Water < BattleshipBoardElement
  
  def initialize
   @is_water = true
  end

  def get_shoot
    'WATER'
  end

end

class Ship < BattleshipBoardElement
  
  attr_reader :was_hit
  
  def initialize
    @is_water = false
    @was_hit = false
  end
  
  def get_shoot
    @was_hit = true
    raise 'Should be implemented in subclasses'
  end

end

class SmallShip < Ship

  def get_shoot
    super
    'SUNK'
  end

end

class LargeShipPart < Ship
  
  attr_writer :other_part

  def get_shoot
    super
    if @other_part.was_hit
      'SUNK'
    else
      'HIT'
    end
  end

end

class LargeShipParts
  
  #Returns both of large ship parts
  def self.parts
    prow = LargeShipPart.new
    stern = LargeShipPart.new
    prow.other_part = stern
    stern.other_part = prow
    [prow,stern]
  end

end