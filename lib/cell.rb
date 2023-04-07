class Cell 
  attr_reader :coordinate, :empty, :ship

  def initialize(coordinate)
    @coordinate = coordinate 
    @ship = nil
    @empty = true
  end
  def empty?
    @empty
  end
  def place_ship(ship)
    if empty? == true
      @ship = ship
      @empty = false
    end
  end
end