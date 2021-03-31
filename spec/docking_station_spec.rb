require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq(bike)
    end
  end
  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  it 'should dock bikes' do
    expect(subject).to respond_to(:dock).with(1).argument
  end 

  it { is_expected.to respond_to :bike }

  it 'should dock bikes' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq(bike)
  end 

  it 'return bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq(bike)
  end
end