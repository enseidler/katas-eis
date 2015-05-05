class BattleshipBoardElement
  #Abstract class! NOT USE!!
  attr_reader :is_water
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
  end

end

class SmallShip < Ship

  def get_shoot
    'SUNK'
  end

end

class LargeShipProw < Ship

  attr_writer :stern

  def get_shoot
    super
    if @stern.was_hit
      'SUNK'
    else
      'HIT'
    end
  end

end

class LargeShipStern < Ship
  
  attr_writer :prow

  def get_shoot
    super
    if @prow.was_hit
      'SUNK'
    else
      'HIT'
    end
  end

end