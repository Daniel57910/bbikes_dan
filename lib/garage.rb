require 'van'

class Garage
 def initialize(van)
  @van = van
 end

 def fixing(van)
  return van.map! {|van| van.working}
 end

end