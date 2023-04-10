class Board 
  attr_reader :cells 

  def initialize 
    @cells = {
      "A1" =>Cell.new("A1"),
      "A2" =>Cell.new("A2"),
      "A3" =>Cell.new("A3"),
      "A4" =>Cell.new("A4"),
      "B1" =>Cell.new("B1"),
      "B2" =>Cell.new("B2"),
      "B3" =>Cell.new("B3"),
      "B4" =>Cell.new("B4"),
      "C1" =>Cell.new("C1"),
      "C2" =>Cell.new("C2"),
      "C3" =>Cell.new("C3"),
      "C4" =>Cell.new("C4"),
      "D1" =>Cell.new("D1"),
      "D2" =>Cell.new("D2"),
      "D3" =>Cell.new("D3"),
      "D4" =>Cell.new("D4")
    }
    @horizontal_cells = [['A1', 'A2', 'A3', 'A4'],['B1','B2','B3','B4'],['C1','C2','C3','C4'],['D1','D2','D3','D4']]
    @vertical_cells = [['A1','B1','C1','D1'],['A2','B2','C2','D2'],['A3','B3','C3','D3'],['A4','B4','C4','D4']]

  end

  def valid_coordinate?(coordinate)
    if cells.include?(coordinate) == true 
      true 
    else 
      false 
    end
  end

  def valid_placement?(ship, coordinates)
    if ship.length == coordinates.length && validate_cell(coordinates)
      coordinates_consecutive_horizontal?(coordinates) || coordinates_consecutive_vertical?(coordinates)
    else false 
    end
  end
  #helper method for valid cells
  def validate_cell(ship_coordinates)
    ship_coordinates.each.all? do |cell|
      return false unless valid_coordinate?(cell)
      cells[cell].empty?
    end
  end
  #helper method for consecutive horizontal cells
  def coordinates_consecutive_horizontal?(coordinates)
    if @horizontal_cells[0].each_cons(coordinates.length).any? do |cells|
      coordinates == cells 
      end
        true
    elsif @horizontal_cells[1].each_cons(coordinates.length).any? do |cells|
      coordinates == cells 
      end
        true 
    elsif @horizontal_cells[2].each_cons(coordinates.length).any? do |cells|
      coordinates == cells 
      end
        true 
    elsif @horizontal_cells[3].each_cons(coordinates.length).any? do |cells|
      coordinates == cells 
      end
        true
      else  
        false
      end 
    end 
  end 
  #helper method for consecutive vertical cells
  def coordinates_consecutive_vertical?(coordinates)
    if @vertical_cells[0].each_cons(coordinates.length).any? do |cells|
      coordinates == cells 
      end
        true
    elsif @vertical_cells[1].each_cons(coordinates.length).any? do |cells|
      coordinates == cells 
      end
        true 
    elsif @vertical_cells[2].each_cons(coordinates.length).any? do |cells|
      coordinates == cells 
      end
        true 
    elsif @vertical_cells[3].each_cons(coordinates.length).any? do |cells|
      coordinates == cells 
      end
        true
    else  
        false
    end 
  end