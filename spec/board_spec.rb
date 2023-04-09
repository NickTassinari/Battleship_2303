require './lib/board'

RSpec.describe Board do 
  describe '#initialize' do 
    it 'exists and has readable attributes' do 
      board = Board.new 

      expect(board).to be_a(Board)
      expect(board.cells).to be_a(Hash)
      expect(board.cells.length).to eq(16)
    end
  end

  describe '#valid_coordinate' do 
    it 'can validate coordinates on board' do 
      board = Board.new 

      expect(board.valid_coordinate?("A1")).to eq(true)
      expect(board.valid_coordinate?("D4")).to eq(true)
      expect(board.valid_coordinate?("A5")).to eq(false)
      expect(board.valid_coordinate?("E1")).to eq(false)
      expect(board.valid_coordinate?("A22")).to eq(false)
    end
  end

  describe '#valid_placement' do 
    it 'can tell if placement is not valid' do 
      board = Board.new 
      cruiser = Ship.new('Cruiser', 3)
      submarine = Ship.new('Submarine', 2)

      expect(board.valid_placement?(cruiser, ['A1', 'A2'])).to eq(false)
      expect(board.valid_placement?(submarine, ['A2', 'A3', 'A4'])).to eq(false)
    end
  end

    it 'can tell if coordinates are consecutive' do 
      board = Board.new 
      cruiser = Ship.new('Cruiser', 3)
      submarine = Ship.new('Submmarine', 2)
    
      expect(board.valid_placement?(cruiser, ['A1', 'A2', 'A4'])).to eq(false)
      expect(board.valid_placement?(submarine, ['A1', 'C1'])).to eq(false)
      expect(board.valid_placement?(cruiser, ["A3", "A2", "A1"])).to eq(false)
      expect(board.valid_placement?(submarine, ["C1", "B1"])).to eq(false)
    end

    it 'checks that coordinates cannot be diagonal' do 
      board = Board.new 
      cruiser = Ship.new('Cruiser', 3)
      submarine = Ship.new('Submmarine', 2)
    
      expect(board.valid_placement?(cruiser, ["A1", "B2", "C3"])).to eq(false)
      expect(board.valid_placement?(submarine, ["C2", "D3"])).to eq(false)
    end

    it 'can tell if placement is valid' do
      board = Board.new
      cruiser = Ship.new('Cruiser', 3)
      submarine = Ship.new('Submarine', 2)
    
      expect(board.valid_placement?(submarine, ['A1', 'A2'])).to eq(true)
      expect(board.valid_placement?(cruiser, ['B1', 'C1', 'D1'])).to eq(true)
    end
  end 
end