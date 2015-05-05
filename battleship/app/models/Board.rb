require_relative 'BattleshipBoardElement.rb'

class Board

  attr_reader :rows
  attr_reader :columns
  attr_reader :coords

  def initialize(rows,columns)
    @rows = rows
    @columns = columns
    @coords = Array.new(rows, Array.new(columns) { Water.new }) 
  end

  #Create small ship on coordinate
  def put_small_ship(row,column)
    @coords[row][column] = SmallShip.new
  end

  #Create large ship on coordinate. Horizontally from left to right
  def put_large_ship(row,column)
  	prow,stern = LargeShipParts.parts
    @coords[row][column] = prow 
    @coords[row][column+1] = stern
  end
  
  #Check if the coordinate are empty
  def is_empty(row,column)
    @coords[row][column].is_water
  end

  #Shoot on a position, and returns the result on a string 
  def shoot(row,column)
    @coords[row][column].get_shoot
  end

end