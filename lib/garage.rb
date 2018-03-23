class Garage
 def initialize
  @fixed_bike_storage = []
 end
 def fixing
  @fixed_bike_storage = @van.map! {|van| van.working}
 end

end