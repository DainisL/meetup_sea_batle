require "./cell.rb"
require "./ship.rb"
require "./cordinate.rb"
class Grid
  attr_accessor :cell
  def initialize
    @cell = {}
  end
  def [](key)
    @cell[key] ||= {}
  end

  def rows
    @cell.length
  end

  alias_method :length, :rows

  def put_ship(ship)
    ship.coordinates.each do |coor|
      @cell[coor.x][coor.y] = Cell.new(true)
    end

  end

  def fire x, y
    unless @cell[x][y].empty? && @cell[x][y].destroyed
      @cell[x][y].call = true
    end
  end

  def generator
    10.times do |x|
      10.times do |y|
        self[x][y] = Cell.new
      end
    end
  end
end

