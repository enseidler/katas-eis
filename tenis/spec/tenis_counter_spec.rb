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

    it 'game points counter should be (0-0) when the match begins' do
        counter = TenisCounter.new
        counter.game_goes(0,0).should be true
    end
    
    it 'game points should be (15-0) when player wins a point' do
        counter = TenisCounter.new
        counter.won_point(TenisCounter::PLAYER_1)
        counter.game_goes(15,0).should be true
    end

    it 'game points should be (30-40) when PLAYER_1 wins 2 point and PLAYER_2 wins 3 points' do
        counter = TenisCounter.new
        counter.won_point(TenisCounter::PLAYER_2)
        counter.won_point(TenisCounter::PLAYER_1)
        counter.won_point(TenisCounter::PLAYER_1)
        counter.won_point(TenisCounter::PLAYER_2)
        counter.won_point(TenisCounter::PLAYER_2)
        counter.game_goes(30,40).should be true
    end

    it 'game points should be (ADV-40) when game goes (40-40) and PLAYER_1 wins the point' do
        counter = TenisCounter.new
        counter.won_point(TenisCounter::PLAYER_1)
        counter.won_point(TenisCounter::PLAYER_1)
        counter.won_point(TenisCounter::PLAYER_1)
        counter.won_point(TenisCounter::PLAYER_2)
        counter.won_point(TenisCounter::PLAYER_2)
        counter.won_point(TenisCounter::PLAYER_2)
        counter.won_point(TenisCounter::PLAYER_1)
        counter.game_goes(TenisCounter::ADV,40).should be true
    end

    it 'PLAYER_2 should win the game when goes (15-40) and wins the point' do
        counter = TenisCounter.new
        counter.won_point(TenisCounter::PLAYER_2)
        counter.won_point(TenisCounter::PLAYER_1)
        counter.won_point(TenisCounter::PLAYER_2)
        counter.won_point(TenisCounter::PLAYER_2)
        counter.won_point(TenisCounter::PLAYER_2)
        counter.set_goes(0,1).should be true
    end

    it 'PLAYER_1 should win the game when goes (ADV-X) and wins the point' do
        counter = TenisCounter.new
        counter.won_point(TenisCounter::PLAYER_1)
        counter.won_point(TenisCounter::PLAYER_1)
        counter.won_point(TenisCounter::PLAYER_1)
        counter.won_point(TenisCounter::PLAYER_2)
        counter.won_point(TenisCounter::PLAYER_2)
        counter.won_point(TenisCounter::PLAYER_2)
        counter.won_point(TenisCounter::PLAYER_1)
        counter.won_point(TenisCounter::PLAYER_1)
        counter.set_goes(1,0).should be true
    end

    it 'game points should be (40-40) when goes (ADV-40) and PLAYER_2 wins the point' do
        counter = TenisCounter.new
        counter.won_point(TenisCounter::PLAYER_1)
        counter.won_point(TenisCounter::PLAYER_1)
        counter.won_point(TenisCounter::PLAYER_1)
        counter.won_point(TenisCounter::PLAYER_2)
        counter.won_point(TenisCounter::PLAYER_2)
        counter.won_point(TenisCounter::PLAYER_2)
        counter.won_point(TenisCounter::PLAYER_1)
        counter.won_point(TenisCounter::PLAYER_2)
        counter.game_goes(40,40).should be true
    end
    
    it 'set games counter should be (2-2) when each player won 2 games' do
        counter = TenisCounter.new
        counter.won_game(TenisCounter::PLAYER_1)
        counter.won_game(TenisCounter::PLAYER_1)
        counter.won_game(TenisCounter::PLAYER_2)
        counter.won_game(TenisCounter::PLAYER_2)
        counter.set_goes(2,2).should be true
    end
    
    it 'game points should be (0-0) when player wins the game' do
        counter = TenisCounter.new
        counter.won_point(TenisCounter::PLAYER_1)
        counter.won_point(TenisCounter::PLAYER_1)
        counter.won_point(TenisCounter::PLAYER_1)
        counter.won_point(TenisCounter::PLAYER_1)
        counter.game_goes(0,0).should be true
    end

end