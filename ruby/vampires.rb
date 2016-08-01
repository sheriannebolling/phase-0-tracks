
#vampire survey
puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp
puts "What year were you born?"
born = gets.chomp
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic = gets.chomp
puts "Would you like to enroll in the company’s health insurance?"
insurance = gets.chomp

#preferences
wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false

year = "2016".to_i

#Determine if age is correct
if age.to_i == year - born.to_i
	youth = true
else
	youth = false
end

#Determine if likely a vampire

if name == "Drake Cula" || name == "Tu Fang"
	puts "Definitely a vampire"
elsif youth == false && (garlic == "no" && insurance == "no")
	puts "Almost certainly a vampire."
elsif youth == false && (garlic == "no" || insurance == "no")
	puts "probably a vampire."
elsif youth == true && (garlic == "yes" || insurance == "yes")
	puts "Probably not a vampire."
else 
	puts "Results inconclusive"
end


