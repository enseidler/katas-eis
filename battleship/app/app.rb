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
      session[:board] = @board
      render 'battle/battle'      
    end

  end
end
