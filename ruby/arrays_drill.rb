dogs = []
p dogs

dogs = ["Grizzly", "Mashed potatoes", "Fred", "Bananas", "Brad"]
p dogs

dogs.delete_at(2)
p dogs

dogs.insert(2, "Bubbles")
p dogs

dogs.shift
p dogs

dogs.include?("Mashed potatoes")
p dogs

cats= []
p cats

cats = ["Floppy", "Charles", "Sam"]
p cats

animals = cats + dogs 
p animals
