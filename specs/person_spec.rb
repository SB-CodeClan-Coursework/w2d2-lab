require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../person')

class PersonTest < MiniTest::Test

  def setup()
    @person = Person.new("John", 99)
  end

  def test_get_passenger_name
    assert_equal("John", @person.name)
  end

  def test_get_passenger_age
    assert_equal(99, @person.age)
  end


end
