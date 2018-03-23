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
    it "allows to report a broken bike to the docking station" do
      # Outside class called
      station = double(:dockingstation)
      bike = Bike.new
      allow(station).to receive(:dock).and_return(bike)
      expect(bike.broken).to eq false
    end
end
