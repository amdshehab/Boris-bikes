require 'garage'

describe Garage do

  let(:docking_station) { double :docking_station }
  let(:bike) { double :bike }

  it "responds to #collect_bikes" do
    expect(subject).to respond_to(:collect_bikes)

  end

  it "responds to #return_bikes" do
    expect(subject).to respond_to(:return_bikes)

  end

  it "responds to #fix_bikes" do
    expect(subject).to respond_to(:fix_bikes)

  end

  it "has a #van" do
    expect(subject.van).to eq []
  end

  it "collect a broken #bike from #docking_station" do
    allow(bike).to receive(:working).and_return(false)
    allow(docking_station).to receive(:bikes).and_return(bike)
    expect(subject.collect_bikes(docking_station)).to eq bike
  end
end
