puts "How many employees will be processed?"
employees = gets.chomp

while employees.to_i > 0 do
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
	
	#Determine if age is correct
	year = "2016".to_i

	if age.to_i == year - born.to_i
		youth = true
	else
		youth = false
	end
	
	#ask about allergies 
	allergies = "none"
	
		until allergies == "done" do
			puts "Do you have allergies? Please enter one at a time. Enter done when you have no more allergies to enter."
			allergies = gets.chomp	
			if allergies == "sunshine"
			 allergies = "done"
			 youth = false
			 garlic = "no"
			 insurance = "yes"
			 name = "Sheri" 
			end
		end

	#Determine if likely a vampire
	
	if (youth == true && (garlic == "yes" || insurance == "yes") || (garlic == "yes" && insurance == "yes") && (name != "Drake Cula" && name != "Tu Fang" && allergies != "sunshine"))
		puts "Probably not a vampire."
	elsif (youth == false && (garlic == "no" || insurance == "no")&& !(garlic == "no" && insurance == "no")&&(name != "Drake Cula" && name != "Tu Fang" && allergies != "sunshine"))
		puts "probably a vampire." 
	elsif (youth == false && (garlic == "no" && insurance == "no") && (name != "Drake Cula" && name != "Tu Fang" && allergies != "sunshine"))
		puts "Almost certainly a vampire."
	elsif (name == "Drake Cula" || name == "Tu Fang") && allergies != "sunshine"
		puts "Definitely a vampire"
	else 
		puts "Results inconclusive"
	end
	employees = employees.to_i - 1

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
