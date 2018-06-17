require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/sfb'

class SuperFizzBuzzTest < Minitest::Test

  def test_it_exists
    game = SuperFizzBuzz.new(1, 2, 3)
    assert_instance_of SuperFizzBuzz, game
  end

  def test_it_has_attributes
    game = SuperFizzBuzz.new(1, 2, 3, 2..4)
    assert_equal 1, game.first
    assert_equal 2, game.second
    assert_equal 3, game.third
    assert_equal 2..4, game.range

    game = SuperFizzBuzz.new(3, 5, 7, 5..8)
    assert_equal 3, game.first
    assert_equal 5, game.second
    assert_equal 7, game.third
    assert_equal 5..8, game.range

    game = SuperFizzBuzz.new()
    assert_equal 3, game.first
    assert_equal 5, game.second
    assert_equal 7, game.third
    assert_equal 1..1000, game.range
  end

  def test_it_populates_number_range_from_range
    game = SuperFizzBuzz.new(1, 2, 3, 4..7)
    assert_equal [4, 5, 6, 7], game.populate_number_range

    game = SuperFizzBuzz.new()
    assert_equal 1, game.populate_number_range[0]
    assert_equal 1000, game.populate_number_range[-1]
  end

  def test_it_assigns_supers_in_place_of_numbers
    game = SuperFizzBuzz.new(3, 5, 7, 105..107)
    game.populate_number_range
    assert_equal ["SuperFizzBuzz", 106, 107], game.assign_super_names

    game = SuperFizzBuzz.new(3, 5, 7, 34..35)
    game.populate_number_range
    assert_equal [34, "SuperBuzz"], game.assign_super_names

    game = SuperFizzBuzz.new(3, 5, 7, 21..28)
    game.populate_number_range
    assert_equal ["SuperFizz", 22, 23, 24, 25, 26, 27, "Super"], game.assign_super_names
  end

  def test_it_assigns_buzzes_in_place_of_numbers
    game = SuperFizzBuzz.new(3, 5, 7, 15..21)
    game.populate_number_range
    game.assign_super_names
    assert_equal ["FizzBuzz", 16, 17, 18, 19, "Buzz", "SuperFizz"], game.assign_buzz_names
  end

  def test_it_assigns_fizzes_in_place_of_numbers
    game = SuperFizzBuzz.new(3, 5, 7, 11..15)
    game.populate_number_range
    game.assign_super_names
    game.assign_buzz_names
    assert_equal [11, "Fizz", 13, "Super", "FizzBuzz"], game.assign_fizz_names
  end

  def test_helper_assigns_correct_name_in_place_of_number
    game = SuperFizzBuzz.new(3, 5, 7, 105..109)
    # game.populate_number_range
    assert_equal ["SuperFizzBuzz", 106, 107, "Fizz", 109], game.output

    game = SuperFizzBuzz.new(3, 5, 7, 21..25)
    # game.populate_number_range
    assert_equal ["SuperFizz", 22, 23, "Fizz", "Buzz"], game.output
    #
    game = SuperFizzBuzz.new(3, 5, 7, 35..37)
    # game.populate_number_range
    assert_equal ["SuperBuzz", "Fizz", 37], game.output
  end
end

#
