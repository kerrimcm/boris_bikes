require_relative 'bike' # without this you'll get uninitialized constant DockingStation::Bike

class DockingStation
  def release_bike
    Bike.new
  end
end