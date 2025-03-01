require 'minitest/autorun'
require 'minitest/pride'
require './lib/patron'

class PatronTest < Minitest::Test
  def test_it_exists_and_has_attributes
    patron_1 = Patron.new("Bob", 20)

    assert_instance_of Patron, patron_1
    assert_equal "Bob", patron_1.name
    assert_equal 20, patron_1.spending_money
  end

  def test_patron_has_empty_interests
    patron_1 = Patron.new("Bob", 20)

    assert_equal patron_1.interests, []
  end

  def test_patron_can_add_interests
    patron_1 = Patron.new("Bob", 20)
    patron_1.add_interests("Dead Sea Scrolls")
    patron_1.add_interests("Gems and Minerals")

    assert_equal patron_1.interests, ["Dead Sea Scrolls", "Gems and Minerals"]
  end  
end
