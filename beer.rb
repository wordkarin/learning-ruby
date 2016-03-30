#describe what you like in a beer
puts "Do you like beer?"
beer_boolean = gets.chomp

if beer_boolean == "yes"
  then puts "Do you like hops?"
  hops_boolean = gets.chomp
  if hops_boolean == "yes"
    then beer_choice = "IPA"
  else puts "Do you like light beers?"
    light_beer_boolean = gets.chomp
    if light_beer_boolean == "yes"
      then beer_choice = "pilsner"
    else light_beer_boolean == "no"
      puts "What kind of beer DO you like?"
      beer_choice = gets.chomp
  end
end
else
  puts "Do you like cider?"
  cider_boolean = gets.chomp
  if cider_boolean == "yes"
    then beer_choice = "cider"
  else
    beer_choice = "water"
  end
end
#pick a beer based on that description
    puts "Here's your " + beer_choice + "."
#drink up!
puts "Cheers!"
