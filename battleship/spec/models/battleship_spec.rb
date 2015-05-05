require_relative '../../app/models/Board.rb'
require_relative '../spec_helper.rb'

describe 'Battleship' do

  before (:each) do
    @board = Board.new 5,5
  end

  it 'create a Board' do
    expect(@board.kind_of? Board).to eq true
  end

  it 'should create a 5x5 Board with 5 columns' do
    expect(@board.columns).to eq 5
  end

  it 'should create a 5x5 Board with 5 rows' do
    expect(@board.rows).to eq 5
  end

  it 'should create small ship in 3:3 location' do
    @board.put_small_ship 3,3
    expect(@board.is_empty(3,3)).to eq false
  end

end