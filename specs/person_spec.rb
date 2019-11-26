require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../person')

class PersonTest < MiniTest::Test

  def setup()
    @person1 = Person.new("John", 99)
    @person2 = Person.new("Frank" 3)
  end

  def test_get_passenger_name
    assert_equal("John", @person1.name)
  end

  def test_get_passenger_age
    assert_equal(99, @person1.age)
  end

end
