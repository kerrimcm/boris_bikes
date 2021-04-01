require_relative 'bike' # without this you'll get uninitialized constant DockingStation::Bike

class DockingStation
  attr_reader :bikes
  DEFAULT_CAPACITY = 20
  def initialize
    @bikes = []
  end 

  def release_bike
    if empty?
      raise 'No bikes available' 
    else 
      @bikes.pop
    end 
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike
  end 

  private

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end 

  def empty?
    @bikes == []
  end 
end 
