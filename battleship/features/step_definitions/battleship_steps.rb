require_relative '../../app/models/Board.rb'

Given(/^a board with dimensions "(.*?)" x "(.*?)"$/) do |rows,columns|
  @board = Board.new rows.to_i,columns.to_i
end

Given(/^I create a small ship in position "(.*?)"$/) do |coord|
  row, column = coord.split(":")
  @board.put_small_ship(row.to_i,column.to_i)
end

Then(/^position "(.*?)" is not empty$/) do |coord|
  row, column = coord.split(":")
  expect(@board.is_empty(row.to_i,column.to_i)).to eq false
end

Given(/^I create a large ship in position "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

