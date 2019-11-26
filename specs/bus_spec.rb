require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus')
require_relative('../person')

class BusTest < MiniTest::Test

  def setup()
    @bus = Bus.new(400, "Airport")
  end

  def test_get_bus_route_number
    assert_equal(400, @bus.route_number)
  end

  def test_get_destination
    assert_equal("Airport", @bus.destination)
  end

  def test_drive
    assert_equal("Brum Brum", @bus.drive)
  end

  def test_number_passengers_on_bus
    assert_equal(0, @bus.number_passengers_on_bus)
  end

  def test_pickup_passenger
    @bus.pickup_passenger(@person1)
    assert_equal(1, @bus.number_passengers_on_bus)
  end

  def test_dropoff_passenger
    @bus.pickup_passenger(@person2)
    @bus.dropoff_passenger(@person2)
    assert_equal(0, @bus.number_passengers_on_bus)
  end

  def test_empty_bus
    @bus.pickup_passenger(@person1)
    @bus.pickup_passenger(@person2)
    @bus.empty_bus
    assert_equal(0, @bus.number_passengers_on_bus)
  end

end
