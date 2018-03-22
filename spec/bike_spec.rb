require 'app'

describe Bike do
    it { is_expected.to respond_to :working }
    it "new bike is working" do
      expect(Bike.new.working).to eq true
    end

    it "allows the user to declare a broken bike" do
      broken_bike = Bike.new
      expect(broken_bike.broken).to eq false
    end
    it "allows to report a broken bike" do
      # Outside class called
      station = double("DockingStation")
      # docking_station = DockingStation.new
      bike = Bike.new
      station.dock(bike, true)
      #not working as station not able to call the dock class
      expect(bike.working).to eq false
    end
end
