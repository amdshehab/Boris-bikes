class DockingStation
  attr_reader :capacity

  def initialize
    capacity = []
    @capacity = capacity
  end

  def release_bike
    if @capacity == []
     raise "no bikes"
    else
      @capacity.pop
    end
  end

  def dock(bike)
    if @capacity.size <= 19
      @capacity.push(bike)
    else
      raise "full up"
    end
  end


end

docking_station = DockingStation.new
