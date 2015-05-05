class Board
  
  attr_reader :columns
  attr_reader :rows

  def initialize(columns,rows)
    @columns = columns
    @rows = rows
  end

end