class Game 
  attr_reader :cpu_board,  
              :cpu_submarine,
              :cpu_cruiser,
              :player_board, 
              :player_submarine,
              :player_cruiser

  def initialize
    @cpu_board = nil  
    @cpu_submarine = nil
    @cpu_cruiser = nil
    @player_board = nil 
    @player_submarine = nil
    @player_cruiser = nil 
  end

  def set_up_game 
    @cpu_board = Board.new 
    @cpu_submarine = Ship.new('Submarine', 2)
    @cpu_cruiser = Ship.new('Cruiser', 3)
    @player_board = Board.new 
    @player_submarine = Ship.new('Submarine', 2)
    @player_cruiser = Ship.new('Cruiser', 3)
  end
end