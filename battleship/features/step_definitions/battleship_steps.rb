
Given(/^a board with dimensions "(.*?)" x "(.*?)"$/) do |rows,columns|
  visit '/start'
  fill_in :rows, :with => rows
  fill_in :columns, :with => columns
  click_button 'start_button' 
end

Given(/^I create a small ship in position "(.*?)"$/) do |coord|
  row, column = coord.split ':'
  fill_in :in_row, :with => row
  fill_in :in_column, :with => column
  click_button 'create_small_button'
end

Then(/^position "(.*?)" is not empty$/) do |coord|
  row, column = coord.split ':'
  fill_in :row, :with => row
  fill_in :column, :with => column
  click_button 'check_cell_button'
  expected = 'The position ('+row.to_s+','+column.to_s+') has a ship'
  expect(page.find('#last_event')).to have_content(expected)
end

Given(/^I create a large ship in position "(.*?)"$/) do |coord|
  pending # express the regexp above with the code you wish you had
end

Given(/^a large ship in position "(.*?)"$/) do |coord|
  pending # express the regexp above with the code you wish you had
end

Given(/^I shoot to position "(.*?)"$/) do |coord|
  pending # express the regexp above with the code you wish you had
end

Then(/^I get hit$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I get water$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I get sunk$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I get error "(.*?)"$/) do |msj|
  pending # express the regexp above with the code you wish you had
end



