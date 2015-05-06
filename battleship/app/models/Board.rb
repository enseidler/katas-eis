require_relative 'BattleshipBoardElement.rb'

class Board
  #Row locations on board are from 0 to (rows - 1)
  #Column locations on board are from 0 to (columns - 1)

  attr_reader :rows, :columns, :coords

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
    verify_shoot_location(row,column)
    @coords[row][column].get_shoot
  end
  
  #Raise an error if coordinate doesn't exist
  def verify_shoot_location(row,column)
    if shoot_out_of_board row,column
      raise 'Shoot out of board!'
    end
  end

  #Check if coordinate doesn't exist
  def shoot_out_of_board(row,column)
    (!(0...@rows).include? row) ||
    (!(0...@columns).include? column)
  end

end