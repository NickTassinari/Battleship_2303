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

  def welcome 
    welcome = "Welcome to BATTLESHIP\nEnter p to play. Enter q to quit.\n"
    puts welcome 
  end

  def cpu_setup
    cpu_cruiser_placer = @cpu_board.valid_cruiser_placements.sample 
    @cpu_board.place(@cpu_cruiser, cpu_cruiser_placer)

    cpu_submarine_placer = @cpu_board.valid_sub_placements.sample 
    @cpu_board.place(@cpu_submarine, cpu_submarine_placer)
  end

  def introduction
    puts "I have laid out my ships on the grid."
    puts "You now need to lay out your two ships."
    puts "The Cruiser is three units long and the Submarine is two units long."
    puts @player_board.render(true)
    puts "\nEnter the squares for the Cruiser (3 spaces):"
    
  end
end