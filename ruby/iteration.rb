#Coyotes

#Create a method that takes a parameter 
def ouch(body_part)
  puts "Im in the method"
  puts "Ouch my #{body_part} hurts"
  yield("John")
end

#Call ouch with parameter and block as parameter
ouch("foot") {
  |name| puts "I'm not in the block" 
  puts "#{name}, why did you throw that at me?"
}


#Create array
ice_cream_flavors = ["chocolate", "vanilla", "cookies and cream",
 "rocky road", "heavenly hash", "strawberry", "mint chocolate chip"]

#Create hash
favorite_things = {
    truck: "F100",
    color: "blue",
    animal: "dog",
    food: "shellfish",
    activity: "skeet shooting",
    workout: "yoga",
    hobby: "traveling"
}

#Iterate through ice cream array with .each and show it doesn't modify array 
ice_cream_flavors.each do |flavor| 
    puts "I like #{flavor} ice cream!"
    p flavor.count("ei")
end

p ice_cream_flavors

#Iterate through favorite things hash with .each and show it doesn't modify hash
favorite_things.each do |category, favorite|
    puts "#{favorite} is my favorite #{category}"
    p favorite.count("ei")
end

p favorite_things

#Iterate through ice cream array with .map! and show it modifies the array 
ice_cream_flavors.map! do |flavor| 
    puts "I like #{flavor} ice cream!"
    p flavor.count("ei")
end

p ice_cream_flavors

#Iterate through favorite things hash with .map and show it doesn't modify the hash
favorite_things.map do |category, favorite|
    puts "#{favorite} is my favorite #{category}"
    p favorite.count("ei")
end

p favorite_things


#Iterate through favorite things hash with .map and assign to a new variable to make a new modified hash storing the
#new values

new_favorites = favorite_things.map do |category, favorite|
     p favorite.capitalize
end

p new_favorites


#Create and print an array and a hash
flowers = ["rose", "violet", "lilac", "peony", "tulip", "daisy", "iris", "lily"]

p flowers

furniture_material = {
    dining_table: "wood",
    coffee_table: "glass",
    chairs: "leather",
    couch: "leather",
    lounge_chair: "wicker",
}

p furniture_material


#Iterate through array and delete flower if flower length is greather than 5 and print to show works
flowers.delete_if {|flower| flower.length > 5}

p flowers

#Iterate through hash and delete furniture if material is equal to wicker and print to show works
furniture_material.delete_if {|furniture, material| material == "wicker"}

p furniture_material

#Iterate through array filter for flower if length is less than 5 or equal to "peony" and print to show works
flowers.keep_if {|flower| flower.length < 5 || flower == "peony"}

p flowers

#Iterate through hash filter for furniture if material is equal to glass or leather and print to show works
furniture_material.keep_if {|furniture, material| material == "glass" || material == "leather"}

p furniture_material


#Iterate through array filter for flower if equal to "rose" or "lily" and print to show works
flowers.select! {|flower| flower == "rose" || flower == "lily"}

p flowers

#Iterate through hash filter for furniture if material is equal to leather and print to show works
furniture_material.select! {|furniture, material| material == "leather"}

p furniture_material

#Iterate through array and returns flowers that do not equal "lily" and print to show works
flowers.reject! {|flower| flower == "lily"}

p flowers

#Iterate through hash and returns material if not equal to leather and print to show works
furniture_material.reject!{|furniture, material| material == "leather"}

p furniture_material



    # =begin
    # Bobolinks

    # def method
    #   puts "This message is inside the method: "
    #   puts "Hello"
    #   yield
    #   yield
    #   yield
    # end

    # method {
    #   puts "This is the message in the block: "
    #   puts "Goodbye"}

    # puts "\nHash"
    # house_paint = {
    #     "living room" => "yellow",
    #     kitchen: "blue",
    #     library: "green",
    #     bedroom: "gray"
    # }

    # puts "Before .each call:"
    # p house_paint

    # puts "\nAfter .each call:"
    # house_paint.each do |room, color|
    #     color = "black"
    #     puts "The #{room} will be painted #{color}!"
    # end

    # puts "\n.each call didn't permanently change anything:"
    # p house_paint

    # puts "\nBefore .map call:"
    # p house_paint

    # puts "\nAfter .map call:"
    # house_paint.map do |room, color|
    #     color = "white"
    #     puts "The #{room} will be painted #{color}!"
    # end

    # puts "\n.map call didn't permanently change anything:"
    # p house_paint

    # puts "\nArray"
    # puts "Before .each call:"
    # furniture = ["sofa", "desk", "dining table", "bed"]
    # p furniture

    # puts "\nAfter .each call"
    # puts "These are the pieces we own: " 
    # furniture.each do |piece| 
    #     piece = "footstool"
    #     puts "#{piece}"
    # end

    # puts "\n.each did not permanently change anything:"
    # p furniture

    # puts "\nBefore .map call:"
    # p furniture

    # puts "\nAfter .map call:"
    #     puts "These are the pieces we own: " 
    #     furniture.map do |piece|
    #         piece = "nightstand" 
    #         puts "#{piece}"
    # end

    # puts "\n.map did not permanently change anything:"
    # p furniture

    # puts "\nBefore .map! call:"
    # p furniture

    # puts "\nAfter .map! call:"
    #     puts "These are the pieces we own: " 
    #         furniture.map! do |piece|
    #             piece.reverse!
    # end

    # puts furniture
    # puts "\n.map! call did permanently change the furniture"

    # p furniture
    # puts "\n"

    # # Array

    # letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k"]
    # puts "\nBefore .delete_if method is called:"
    # p letters

    # puts "\nAfter .delete_if method is called:"
    # letters.delete_if { |letter| letter < "c" }
    # p letters

    # puts "\nBefore .keep_if method is called:"
    # p letters

    # puts "\nAfter .keep_if method is called:"
    # letters.keep_if { |letter| letter > "e" }
    # p letters 

    # puts "\nBefore .select! method is called:"
    # p letters

    # puts "\nAfter .select! method is called:"
    # letters.select! { |letter| letter > "f" }
    # p letters 

    # puts "\nBefore .drop_while method is called:"
    # p letters

    # puts "\nAfter .drop_while method is called:"
    # new_letters = letters.drop_while { |letter| letter < "i" }
    # p new_letters

    # # This shows new_letters is false 
    # p new_letters == true
    # puts "\n"

    # # Hash

    # numbers = {
    #     1 => "one",
    #     2 => "two",
    #     3 => "three",
    #     4 => "four",
    #     5 => "five",
    #     6 => "six",
    #     7 => "seven",
    #     8 => "eight",
    #     9 => "nine",
    #     10 => "ten"
    # }

    # puts "Before .delete_if method is called:"
    # p numbers

    # puts "\nAfter .delete_if method is called:"
    # numbers.delete_if { |digit, word| digit < 3 }
    # p numbers

    # puts "\nBefore .keep_if method is called:"
    # p numbers

    # puts "\nAfter .keep_if method is called:"
    # numbers.keep_if { |digit, word| digit > 4 }
    # p numbers

    # puts "\nBefore .select! method is called:"
    # p numbers

    # puts "\nAfter .select! method is called:"
    # numbers.select! { |digit, word| digit > 6 }
    # p numbers

    # puts "\nBefore .reject! method is called:"
    # p numbers

    # puts "\nAfter .reject! method is called:"
    # numbers.reject! { |digit, word| digit < 9 }
    # p numbers

    # # Shows reject! returns false
    # p numbers == true

    # =end