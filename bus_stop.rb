require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus')
require_relative('../person')
require_relative('../bus_stop')

class BusStopTest < MiniTest::Test

  def setup()
    @bus_stop = BusStop.new("Princes Street", ["Egg McGee", "Bob John", "Bob John Jr."])
  end

  def test_get_bus_stop_name
    assert_equal("Princes Street", @bus_stop.name)
  end

  def test_queue
    assert_equal()
  end












end
