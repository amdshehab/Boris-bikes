class DockingStation
  attr_reader :bike

  def release_bike
    bike = Bike.new
   end

  def dock(bike)
    @bike = bike
  end
end

docking_station = DockingStation.new