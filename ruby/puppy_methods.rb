#Coyotes
class Puppy

 def initialize
     puts "initializing new puppy instance."
 end

 def fetch(toy)
   puts "I brought back the #{toy}!"
   toy
 end

 def speak(number)
     number.times {puts "Woof!"}
 end

 def roll_over
     puts "*rolls over*"
 end

 def dog_years(number)
     dog_years = number * 7
     puts dog_years
     dog_years
 end

 def play_dead(number)
     puts "*plays dead for #{number} seconds*" 
 end



end

# fido = Puppy.new

# fido.fetch("bone")
# fido.speak(10)
# fido.roll_over
# fido.dog_years(7)
# fido.play_dead(10000)

class Square

    def initialize
        puts "Initializing new square."
    end

    def area(side = 5)
        return side**2
    end

    def parameter(side = 5)
        return side*4
    end
end

block = Square.new

puts block.area(10)

array = []

50.times {array.push(Square.new)}
p array

array.each{|square| puts square.area}
array.each{|square| puts square.parameter}



#Bobolinks
    # class Puppy
    #   def initialize 
    #     puts "Initializing new puppy instance ..."
    #   end

    #   def fetch(toy)
    #     puts "I brought back the #{toy}!"
    #     toy
    #   end
      
    #   def speak(integer)
    #     integer.times do |speak|
    #     puts "Woof!"
    #   	end
    #   end
      
    #   def roll_over
    #     puts "*rolls over*"
    #   end

    #   def dog_years(integer)
    #   	dog_age = integer * 7
    #   	puts "The dog is #{dog_age} years old!"
    #   end

    #   def growls
    #     puts "Grrrrr!"
    #   end

    # end


    # Mogley = Puppy.new
    # Mogley.fetch("ball")
    # Mogley.speak(3)
    # Mogley.roll_over
    # Mogley.dog_years(2)
    # Mogley.growls


    # class Baby

    #   def initialize
    #     puts "Initializing new baby instance ..."
    #   end

    #   def cry
    #     puts "WAHHHHHHH!"
    #   end

    #   def coo(integer)
    #     integer.times do |coo|
    #     puts "coooooo!"
    #     end
    #   end

    # end

    # charles = Baby.new
    # charles.cry
    # charles.coo(4)

    # baby_list = []

    # 50.times do |baby|
    #   baby_list << Baby.new
    # end

    # #p baby_list

    # baby_list.each do |baby|
    #   baby.cry
    #   baby.coo(2)
    # end


