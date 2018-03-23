require 'app'

class Van
  attr_reader :van
  def initialize
    @van = []
  end

  def collect_from_docking
    @bikerack.each {|bike| @van << bike if bike.broken}
    return @van
  end
end