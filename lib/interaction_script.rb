require './lib/sfb'

puts "Let's play SuperFizzBuzz!\n\t(if you don't want to play, just type ctrl-C to exit)"

sleep 5
puts "\nHere's how it works.  First, you supply three numbers like 1, 2, and 3 or 3, 5, and 7.  These will be our \"DIVISIBLE BY\" numbers."
sleep 7
puts "\nThen, you supply a range like 1 to 25 or 50 to 92."
sleep 5
puts "\nThe game will take every number in that range and see which of your DIVISIBLE BY numbers divide evenly into that number."
sleep 7
puts "\nIf a number in your range is evenly divisible by one of your DIVISIBLE BY numbers, the game will replace that number with a word: Super, Fizz, Buzz or a combination of those words like Superfizz, or Fizzbuzz."
sleep 10

puts "\nWhat number do you want your first DIVISIBLE BY to be? > "
first = $stdin.gets.chomp.to_i
  if first == 0
    first = 42
    puts "\nDivision by zero is undefined.  So, to save you from a certain and imminent cessation of your very existence, I've just made the number 42."
    sleep 4
    puts "\nYou're welcome."
  end

puts "\nOkay, now your second? > "
second = $stdin.gets.chomp.to_i
  if second == 0
    second = 42
    puts "\nDivision by zero is undefined.  So, to save you from a certain and imminent cessation of your very existence, I've just made the number 42."
    sleep 4
    puts "\nYou're welcome."
  end

puts "\nAnd, your third? > "
third = $stdin.gets.chomp.to_i
  if third == 0
    third = 42
    puts "\nDivision by zero is undefined.  So, to save you from a certain and imminent cessation of your very existence, I've just made the number 42."
    sleep 4
    puts "\nYou're welcome."
  end

puts "\nGreat!  You're DIVISIBLE BYs are #{first}, #{second}, and #{third}.  Now for the range..."
sleep 4

puts "\nPlease give me a number for the low end of your range. > "
sleep 2
low_end = $stdin.gets.chomp.to_i

puts "\nOkay, now a number for your high end.  (Please make it bigger than your low end number, so I don't have to do extra work.)  If you want a one-number range, just enter the same number again. > "
sleep 2
high_end = $stdin.gets.chomp.to_i

puts "\nSweet!  You're range is #{low_end} to #{high_end}."
sleep 3
puts "\nNow, let's run your numbers!"
range = low_end..high_end
sleep 3
print "\a"
system('say "beep"')

game = SuperFizzBuzz.new(first, second, third, range)
game.output

#
