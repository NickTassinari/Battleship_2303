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
end