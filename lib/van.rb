class Van
  attr_reader :van
  def initialize(bikes)
    @van = []
    @bikerack = bikes
  end

  def collect_from_docking
    @bikerack.each { |bike|
      if !bike.broken
      @van << bike 
      end
    }
    return @van
  end
end