require_relative 'docking_station'

class Garage

attr_accessor :van

  def collect_bikes(docking_station)
    @van = docking_station.bikes
  end

  def return_bikes

  end

  def fix_bikes

  end

end
