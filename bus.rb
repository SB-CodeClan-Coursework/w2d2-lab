class Bus

  attr_reader(:route_number, :destination)

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive
    return "Brum Brum"
  end

  def number_passengers_on_bus
    return @passengers.length
  end

  def pickup_passenger(person)
    @passengers.push(person)
  end

  def dropoff_passenger(person)
    @passengers.delete(person)
  end

  def empty_bus
    @passengers.clear
  end
  
end
