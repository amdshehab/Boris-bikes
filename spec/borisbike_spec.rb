require 'docking_station'

describe DockingStation do
  it " creates an instance of DockingStation" do
    expect(DockingStation.new).to be_an_instance_of(DockingStation)
  end

 it {is_expected.to respond_to(:release_bike)}

#  it 'expects DockingStation to get a bike' do
#    subject.dock(Bike.new)
#    expect(subject.release_bike).to be_an_instance_of(Bike)
# end

# it 'expects bike to be working' do
#   subject.dock(Bike.new)
#   expect(subject.release_bike.working?).to eq true
#  end

 it 'expects docking_station to be initialized with an argument' do
   docking_station = DockingStation.new
 expect(docking_station).to respond_to(:dock).with(1).argument
 end

 it 'expects docking_station to respond to the dock method' do
   docking_station = DockingStation.new
   expect(docking_station).to respond_to(:dock)
 end

 it 'should raise an error when @bike = nil when releasing' do
   if @capacity == nil
     expect{subject.release_bike}.to raise_error("no bikes")
  end
end

  it 'should raise an error when docked bikes = 20 and docking' do
     DockingStation::DEFAULT_CAPACITY.times {subject.dock(Bike.new)}
    expect{  subject.dock(Bike.new)}.to raise_error("full up")
  end

  it "dock accepts argument to #capacity" do
    cap = 15
    ds = DockingStation.new(cap)
    ds.capacity == cap
  end

  it "#capacity is 20 when no agrument passed to new #docking_station" do
    expect(subject.capacity).to eq 20
  end

  it "identify the first available working bike" do
      subject.dock(Bike.new(false))
      subject.dock(Bike.new)
      expect(subject.find_bike).to eq 1
  end

 end
