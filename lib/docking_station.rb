require_relative 'bike'

class DockingStation

  attr_accessor :bikes, :capacity, :broken_bikes

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
    @broken_bikes = []
  end

  def release_bike
    raise "No working bikes available" if empty?
    bikes.delete_at(find_bike)
  end

  def find_bike
    bikes.index{ |x| x.working == true }
  end


  def dock(bike)
    raise "full up" if full?
    @bikes.push(bike)
  end

  def broken
    @broken_bikes << bikes.select{|x| x.working == false}
  end



  private

  def full?
    if @bikes.size >= capacity
      true
    else
      false
    end
  end

  def empty?
    if bikes.count{ |x| x.working == true } == 0
      true
    else
      false
    end
  end

end
