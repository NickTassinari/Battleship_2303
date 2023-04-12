require 'spec_helper'

RSpec.describe Ship do 

  describe '#initialize' do 
    it 'exists and has readable attributes' do 
      cruiser = Ship.new("Cruiser", 3)

      expect(cruiser).to be_a(Ship)
      expect(cruiser.name).to eq("Cruiser")
      expect(cruiser.length).to eq(3)
    end
  end

  describe '#health' do
    it 'has health' do
      cruiser = Ship.new("Cruiser", 3)
      expect(cruiser.health).to eq(3)
    end
    it '#sunk?' do
      cruiser = Ship.new("Cruiser", 3)
      expect(cruiser.sunk?).to eq(false)
      cruiser.hit
      expect(cruiser.health).to eq(2)
      cruiser.hit
      expect(cruiser.health).to eq(1)
      expect(cruiser.sunk?).to eq(false)
      cruiser.hit
      expect(cruiser.sunk?).to eq(true)
    end
  end
end