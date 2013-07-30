class Cell
  attr_accessor :has_ship, :destroyed
  def initialize(has_ship=false)
    @has_ship = has_ship
    @destroyed = false
  end

end