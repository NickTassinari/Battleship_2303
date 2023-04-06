require './lib/ship'

RSpec.describe Ship do 

  describe '#initialize' do 
    it 'exists and has readable attributes' do 
      cruiser = Ship.new("Cruiser", 3)

      expect(cruiser).to be_a(Ship)
      expect(cruiser.name).to eq("Cruiser")
      expect(cruiser.length).to eq(3)
    end
  end
end 