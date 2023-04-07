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

  describe '#valid_coordinate?' do 
    it 'can validate coordinates on board' do 
      board = Board.new 

      expect(board.valid_coordinate?("A1")).to eq(true)
      expect(board.valid_coordinate?("D4")).to eq(true)
      expect(board.valid_coordinate?("A5")).to eq(false)
      expect(board.valid_coordinate?("E1")).to eq(false)
      expect(board.valid_coordinate?("A22")).to eq(false)
    end
  end
end