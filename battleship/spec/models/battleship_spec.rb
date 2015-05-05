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

end