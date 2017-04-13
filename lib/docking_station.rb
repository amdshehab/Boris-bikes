class DockingStation
  attr_reader :bike

  def release_bike
    if @bike == nil
     raise "no bikes"
    else
      @bike
    end
  end

  def dock(bike)
    @bike = bike
  end
end

docking_station = DockingStation.new
