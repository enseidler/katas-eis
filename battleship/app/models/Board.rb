require_relative 'Ship.rb'

class Board
  
  attr_reader :columns
  attr_reader :rows
  attr_reader :coords

  def initialize(columns,rows)
    @columns = columns
    @rows = rows
    @coords = Array.new(rows, Array.new(columns) {}) 
  end

  #Create small ship on coordinate
  def put_small_ship(column,row)
    @coords[column][row] = SmallShip.new
  end
  
  #Check if the coordinate are empty
  def is_empty(column,row)
  	@coords[column][row].nil?
  end

end