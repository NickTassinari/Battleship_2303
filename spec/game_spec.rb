require 'spec_helper'

RSpec.describe Game do 
  describe '#initialize' do 
    it 'exists' do 
      game = Game.new 

      expect(game).to be_a(Game)
    end
  end

  describe '#set_up' do 
    it 'creates cpu ships and board' do 
      game = Game.new 
      game.set_up_game

      expect(game.cpu_board).to be_a(Board)
      expect(game.cpu_submarine).to be_a(Ship)
      expect(game.cpu_cruiser).to be_a(Ship)
    end

    it 'creates player ships and board' do 
      game = Game.new 
      game.set_up_game 

      expect(game.player_board).to be_a(Board)
      expect(game.player_submarine).to be_a(Ship)
      expect(game.player_cruiser).to be_a(Ship)
    end
  end

  describe '#start_game' do 
    it 'displays welcome message to user' do 
      game = Game.new 

      expect{ game.welcome }.to output("Welcome to BATTLESHIP\nEnter p to play. Enter q to quit.\n").to_stdout
    end

    it 'places CPU ships automatically' do 
      game = Game.new 
      game.set_up_game
      game.cpu_setup 

      expect(game.cpu_board.render == game.cpu_board.render(true)).to eq(false)
    end
  end
end