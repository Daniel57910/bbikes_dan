require 'garage'

describe Garage do
  #describe "#collect_from_docking" do
  it "responds to fixing bike method" do
    expect(subject).to respond_to(:fixing)
  end

  describe "#fixing" do
    it "only returns working bikes to the van"
      bike = Bike.new
      storage = DockingStation.new
      storage.deposit_bike(bike)
      van = Van.new
      van.collect_from_docking
      expect(subject.fixing).to eq([bike])
    end

  end


