class ShipFactory
  def build_one_cell_ship(c1)
    ship = Ship.new
    ship.coordinates << c1
  end
  def build_two_cell_ship(c1, c2)
    ship = Ship.new
    ship.coordinates << c1
    ship.coordinates << c2
  end
  def build_three_cell_ship(c1, c2, c3)
    ship = Ship.new
    ship.coordinates << c1
    ship.coordinates << c2
    ship.coordinates << c3
  end
end