require_relative 'models/Board.rb'

module Battleship
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers

    enable :sessions

    get 'start' do
      render 'battle/start'
    end

    post 'start_battle' do
      @board = Board.new(params[:rows].to_i, params[:columns].to_i)
      @last_event = 'Battleship board succefully created. Size ('+@board.rows.to_s+'x'+@board.rows.to_s+')'
      session[:board] = @board
      render 'battle/battle'      
    end

    post 'create_small' do
      begin
        session[:board].put_small_ship(params[:small_row].to_i, params[:small_column].to_i)
        @last_event = 'Small ship succefully created in ('+params[:small_row].to_s+','+params[:small_column].to_s+')'
      rescue RuntimeError => error
        @last_event = error.message       
      end
      @board = session[:board]
      render 'battle/battle'      
    end

    post 'check_cell' do
      if(session[:board].is_empty(params[:row].to_i, params[:column].to_i))
        @last_event = 'The position ('+params[:row].to_s+','+params[:column].to_s+') is empty'
      else
        @last_event = 'The position ('+params[:row].to_s+','+params[:column].to_s+') has a ship'
      end
      @board = session[:board]
      render 'battle/battle'      
    end
    
    post 'create_large' do
      begin
        session[:board].put_large_ship(params[:large_row].to_i, params[:large_column].to_i)
        @last_event = 'Large ship succefully created in ('+params[:large_row].to_s+','+params[:large_column].to_s+')'
      rescue RuntimeError => error
        @last_event = error.message       
      end
      @board = session[:board]
      render 'battle/battle'      
    end

  end
end
