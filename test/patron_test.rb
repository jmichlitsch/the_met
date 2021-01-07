require 'minitest/autorun'
require 'minitest/pride'
require './lib/patron'

class PatronTest < Minitest::Test
  def test_it_exists_and_has_attributes
    patron = Patron.new("Bob", 20)

    assert_instance_of Patron, patron
    assert_equal "Bob", patron.name
    assert_equal 20, patron.spending_money
  end
end
