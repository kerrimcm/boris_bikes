require './lib/docking_station'
require './lib/bike'

describe DockingStation do 
  it { is_expected.to respond_to :release_bike }

  # Your test should check that you can call working? on the result of DockingStation.release_bike, 
  #and that the result of doing so is true.
  
  it 'returns true when we call release bike on docking station' do
    docking_station = DockingStation.new
    result = docking_station.release_bike
    expect(result.working?).to be true
  end 
end