require 'pry'

class SuperFizzBuzz

  attr_reader   :first,
                :second,
                :third,
                :range,
                :number_range
  def initialize(first = 3, second = 5, third = 7, range = 1..1000)
    @first = first
    @second = second
    @third = third
    @range = range
    @number_range = []
  end

  def populate_number_range
    @range.each do |number|
      @number_range << number
    end
    return @number_range
  end

  def assign_super_names
    @number_range.map! do |number|
      if number % @third == 0
        if number % @second == 0 && number % @first == 0
          number = "SuperFizzBuzz"#753
        elsif number % @second == 0
          number = "SuperBuzz"#75
        elsif number % @first == 0
          number = "SuperFizz"#73
        else
          number = "Super"#7
        end
      else
        number
      end
    end
    return @number_range
  end

  def assign_buzz_names
    @number_range.map! do |number|
      if number % @second == 0
        if number % @first == 0
          number = "FizzBuzz"#53
        else
          number = "Buzz"#5
        end
      else
        number
      end
    end
    return @number_range
  end

  def assign_fizz_names
    @number_range.map! do |number|
      if number % @first == 0
        number = "Fizz"#3
      else
        number#
      end
    end
    return @number_range
  end

  def output
    populate_number_range
    assign_super_names
    assign_buzz_names
    assign_fizz_names
    print @number_range
    return @number_range
  end
end
