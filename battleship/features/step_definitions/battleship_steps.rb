require_relative '../../app/models/Board.rb'

Given(/^a board with dimensions "(.*?)" x "(.*?)"$/) do |columns, rows|
  @board = Board.new columns.to_i, rows.to_i
end

Given(/^I create a small ship in position "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^position "(.*?)" is not empty$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
