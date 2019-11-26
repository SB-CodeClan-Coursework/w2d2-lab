require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus')
require_relative('../person')

class BusTest < MiniTest::Test

  def setup()
    @bus = Bus.new(400, "Airport")
    # @passengers Bus.new([])
  end

  def test_get_bus_route_number
    assert_equal(400, @bus.route_number)
  end

  def test_get_destination
    assert_equal("Airport", @bus.destination)
  end












end
