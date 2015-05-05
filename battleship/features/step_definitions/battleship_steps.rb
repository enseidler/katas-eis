require_relative '../../app/models/Board.rb'

Given(/^a board with dimensions "(.*?)" x "(.*?)"$/) do |columns, rows|
  @board = Board.new columns.to_i, rows.to_i
end

Given(/^I create a small ship in position "(.*?)"$/) do |coord|
  column, row = coord.split(":")
  @board.put_small_ship(column.to_i,row.to_i)
end

Then(/^position "(.*?)" is not empty$/) do |coord|
  column, row = coord.split(":")
  expect(@board.is_empty(column.to_i,row.to_i)).to eq false
end
