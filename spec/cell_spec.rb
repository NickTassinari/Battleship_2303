require './lib/ship'
require './lib/cell'
require 'pry'
RSpec.describe Cell do 
  describe '#initialize' do 
    it 'exists' do 
      cell = Cell.new("B4")

      expect(cell).to be_a(Cell)
    end
  end
  
  describe '#coordinate' do 
    it 'has readable coordinates' do 
      cell = Cell.new("B4")
    
      expect(cell.coordinate).to eq("B4")
    end
  end
  describe '#place_ship' do 
    it 'can place a ship on a coordinate' do
     cell = Cell.new("B4")
     expect(cell.ship).to eq(nil)
     expect(cell.empty?).to eq(true)

     cruiser = Ship.new("Cruiser", 3)
     cell.place_ship(cruiser)
     expect(cell.ship).to eq(cruiser)
     expect(cell.empty?).to eq(false)
    end
  end
end