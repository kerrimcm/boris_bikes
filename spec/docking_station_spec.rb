require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }
  
  it 'releases working bikes' do
    expect(Bike.new).to respond_to(:working?)
  end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq([bike])
    end
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error('No bikes available')
    end
  end

  describe '#dock(bike)' do
    it 'raises an error when the docking station is at capacity' do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'should dock bikes' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq([bike])
  end 

  it 'return bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq([bike])
  end
end