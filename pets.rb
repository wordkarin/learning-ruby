#collect information about a person and their animal and store that information in variables

def apologize(user)
	puts "I'm sorry, " + user + ". That's too bad."
end
 
puts "Tell me your name!"
user_name = gets.chomp

puts "Do you have a pet?"
pet_bool = gets.chomp

if pet_bool == "yes" then
puts "What is your pet's name?"
pet_name = gets.chomp

puts "What kind of animal is your pet?"
pet_kind = gets.chomp

puts "How many legs does your pet have?"
leg_count = gets.chomp

puts "Is your pet tall, sleek, or stout?"
pet_description = gets.chomp

#use those variables to describe the animal in the console output

puts user_name + "'s pet is named " + pet_name + ". " +
pet_name + " is a " + pet_kind + "."
puts pet_name + " has #{leg_count} legs and is " + pet_description + "."
else
    apologize(user_name)
end



#DONE!
