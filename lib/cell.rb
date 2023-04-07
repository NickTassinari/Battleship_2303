class Cell 
  attr_reader :coordinate, :empty, :ship, :render, :fired_upon

  def initialize(coordinate)
    @coordinate = coordinate 
    @ship = nil
    @empty = true
    @rendered = "."
    @fired_upon = false 
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
  
  def fired_upon?
    @fired_upon
  end

  def fire_upon 
     if empty == false 
      ship.hit 
      @fired_upon = true 
     end
  end 
  
  def render
   if @fired_upon == true && empty == true 
     @rendered = "M"
    elsif @fired_upon == true && empty == false 
      @rendered = "H"
    elsif @fired_upon == false && empty == false 
      @rendered = "S"
    else 
      @rendered
   end
  end


end