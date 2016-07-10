require_relative 'plane'
require_relative 'weather'

class Airport
DEFAULT_CAPACITY = 20
attr_reader :planes

  def initialize
@planes = []
end


def land plane, weather = Weather.new
raise 'Airport if full' if @planes.size >= DEFAULT_CAPACITY
raise "Weather condition is bad, no landing" if weather.stormy?
@planes << plane
"The plane #{plane} has landed"
end

def take_off plane, weather = Weather.new
raise "Weather condition is bad, no take offs" if weather.stormy?
"The plane #{planes.delete plane} has taken off"
end
end
