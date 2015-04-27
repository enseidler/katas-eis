require 'rspec'
require_relative '../model/tenis_counter.rb'

describe 'TenisCounter'  do
   
    it 'sets counter should be (0-0) when the match begins' do
        counter = TenisCounter.new
        counter.match_goes(0,0).should be true
    end

    it 'set games counter should be (0-0) when the match begins' do
        counter = TenisCounter.new
        counter.set_goes(0,0).should be true
    end

end