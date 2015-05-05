require_relative 'Ship.rb'

class Board

  attr_reader :rows
  attr_reader :columns
  attr_reader :coords

  def initialize(rows,columns)
    @rows = rows
    @columns = columns
    @coords = Array.new(rows, Array.new(columns) {}) 
  end

  #Create small ship on coordinate
  def put_small_ship(row,column)
    @coords[row][column] = SmallShip.new
  end

  #Check if the coordinate are empty
  def is_empty(row,column)
  	@coords[row][column].nil?
  end

end