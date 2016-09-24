# Pseudocode for the motivationator a program that asks the user for name and the negative feeling they have that day and stores that data. 
# Option to ask for a history of past feelings, dates, and user names.
# Program will then print a random quote that matches the current feeling entered that day. 

# Require gems
# Create Database
# Create 3 tables - 1 for quotes, 2 for feelings, 3 is main table to track
# Create user interface to ask how feel today
# Store the date, name, and feeling in table three
# Retrieve quote that matched feeling entered and print to screen

# require gems

require 'sqlite3'

# create SQLite3 database

motivationator_db = SQLite3::Database.new("motivationator.db")

# Create feelings table

create_table_feelings = <<-SQL
  CREATE TABLE IF NOT EXISTS feelings(
    id INTEGER PRIMARY KEY,
    feeling_name VARCHAR(255)
  )
SQL

motivationator_db.execute(create_table_feelings)

# Create feeling table entries

def create_feeling(db, feeling_name)
  db.execute("INSERT INTO feelings (feeling_name) VALUES (?)" , [feeling_name])
end

feelings = ["frustrated", "sad", "tired", "angry", "uninspired", "defeated"]

# Un-Comment to create feeling entries
# feelings.length.times do |feeling|
# 	create_feeling(motivationator_db, feelings[feeling])
# end

# Create quotes table

create_table_quotes = <<-SQL
  CREATE TABLE IF NOT EXISTS quotes(
    id INTEGER PRIMARY KEY,
    quote VARCHAR(255),
    feeling_id INT,
    FOREIGN KEY (feeling_id) REFERENCES feelings(id)
  )
SQL

motivationator_db.execute(create_table_quotes)

# Create quotes table entries

def create_quote(db, quote, feeling_id)
  db.execute("INSERT INTO quotes (quote, feeling_id) VALUES (?, ?)", [quote, feeling_id])
end

quotes = {
  "When you've exhausted all possibilities, remember this you haven't. - Robert H. Schuller" => 1,
  "Every defeat, every heartbreak, every loss, contains its own seed, its own lesson on how to improve your performance the next time. - Malcolm X" => 1,
  "Success is not built on success. It's built on failure. It's built on frustration. Sometimes its built on catastrophe. - Sumner Redstone" => 1,
  "All that is necessary to break the spell of inertia and frustration is to -- act as if it were impossible to fail. - Dorothea Brande" => 1,
  "When everything seems to be going against you, remember that the airplane takes off against the wind, not with it. —Henry Ford" => 1,
  "Believe you can and you’re halfway there. —Theodore Roosevelt" => 1,
  "If you want to lift yourself up, lift up someone else. —Booker T. Washington" => 2,
  "Sometimes your joy is the source of your smile, but sometimes your smile can be the source of your joy. -Thich Nhat Hanh" => 2,
  "The way I see it, if you want the rainbow, you gotta put up with the rain. — Dolly Parton" => 2,
  "Character cannot be developed in ease and quiet. Only through experience of trial and suffering can the soul be strengthened, ambition inspired, and success achieved. -Helen Keller" => 2,
  "The greatest degree of inner tranquility comes from the development of love and compassion. The more we care for the happiness of others, the greater is our own sense of well-being. -Tenzin Gyatso, the 14th Dalai Lama" => 2,
  "I had the blues because I had no shoes until upon the street, I met a man who had no feet. — Denis Waitley" => 2,
  "A man grows most tired while standing still. -Chinese Proverbs" => 3,
  "Don't stop when you are tired. Stop when you are done! -Brayden Brad" => 3,
  "Perseverance is the hard work you do after you get tired of doing the hard work you already did. -Newt Gingrich" => 3,
  "You never get tired unless you stop and take time for it. -Bob Hope" => 3,
  "Don’t judge each day by the harvest you reap but by the seeds that you plant. —Robert Louis Stevenson" => 3,
  "The tired spirit is a hungry spirit. -Faith Puleston" => 3,
  "Holding on to anger is like grasping a hot coal with the intent of throwing it at someone else; you are the one who gets burned. - Buddha" => 4,
  "Usually when people are sad, they don't do anything. They just cry over their condition. But when they get angry, they bring about a change. - Malcolm X" => 4,
  "The best fighter is never angry. - Lao Tzu" => 4,
  "How much more grievous are the consequences of anger than the causes of it. - Marcus Aurelius" => 4,
  "Anger is just anger. It isn't good. It isn't bad. It just is. What you do with it is what matters. It's like anything else. You can use it to build or to destroy. You just have to make the choice. - Jim Butcher" => 4,
  "Anger is an acid that can do more harm to the vessel in which it is stored than to anything on which it is poured. - Mark Twain" => 4,
  "How wonderful it is that nobody need wait a single moment before starting to improve the world. —Anne Frank" => 5,
  "I alone cannot change the world, but I can cast a stone across the water to create many ripples. —Mother Teresa" => 5,
  "I can’t change the direction of the wind, but I can adjust my sails to always reach my destination. —Jimmy Dean" => 5,
  "Life shrinks or expands in proportion to one’s courage. — Anais Nin" => 5,
  "Twenty years from now you will be more disappointed by the things that you didn’t do than by the ones you did do, so throw off the bowlines, sail away from safe harbor, catch the trade winds in your sails. Explore, Dream, Discover. —Mark Twain" => 5,
  "Here's to the crazy ones. The misfits. The rebels. The troublemakers. The round pegs in the square holes. The ones who see things differently. They're not fond of rules. And they have no respect for the status quo. You can quote them, disagree with them, glorify or vilify them. About the only thing you can't do is ignore them. Because they change things. They push the human race forward. And while some may see them as the crazy ones, we see genius. Because the people who are crazy enough to think they can change the world, are the ones who do. ― Rob Siltanen" => 5,
  "Whether you think you can or you think you can’t, you’re right. —Henry Ford" => 5,
  "Never stop just because you feel defeated. The journey to the other side is attainable only after great suffering. — Santos Kalwar" => 6,
  "Being challenged in life is inevitable, being defeated is optional. -Roger Crawford" => 6,
  "If you’re going through hell, keep going. — Winston Churchill" => 6,
  "Hold fast to dreams, for if dreams die, life is a broken winged bird that cannot fly. – Langston Hughes" => 6,
  "Nothing is impossible, the word itself says “I’m possible”! —Audrey Hepburn" => 6,
  "I’ve missed more than 9000 shots in my career. I’ve lost almost 300 games. 26 times I’ve been trusted to take the game winning shot and missed. I’ve failed over and over and over again in my life. And that is why I succeed. —Michael Jordan" => 6
}

# Un-Comment to create quote entries
# quotes.each do |quote, id|
#   create_quote(motivationator_db, quote, id)
# end

#Create tracker table to track feelings of users over time

create_table_tracker = <<-SQL
  CREATE TABLE IF NOT EXISTS tracker(
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    feeling_id INT,
    quote_id INT,
    enter_date DATE,
    FOREIGN KEY (feeling_id) REFERENCES feelings(id),
    FOREIGN KEY (quote_id) REFERENCES quotes(id)
  )
SQL

motivationator_db.execute(create_table_tracker)

# Create new entry into tracker

def create_tracker(db, first_name, last_name, feeling_id, quote_id, enter_date)
  db.execute("INSERT INTO tracker (first_name, last_name, feeling_id, quote_id, enter_date) VALUES (?,?,?,?,?)", [first_name, last_name, feeling_id, quote_id, enter_date])
end

# Pull random quote from quotes table where feeling entered matches feeling of quote

def pull_quote(db, feeling_number)
  db.execute("SELECT quote FROM quotes WHERE feeling_id == #{feeling_number} ORDER BY RANDOM() LIMIT 1;")
end

# Pull feeling name, feeling, and dates history from tracker 

def pull_tracker(db)
  db.execute("SELECT tracker.first_name, tracker.last_name, feelings.feeling_name, tracker.enter_date FROM feelings JOIN tracker ON feeling_id = feelings.id;")
end

# User Interface

puts "Hello!"
puts "What is your first name?"
first_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp
puts "How are you feeling right now? (type frustrated, sad, tired, angry, uninspired, or defeated)"
feeling = gets.chomp

# If feeling entered matches feeling in feelings array assign it to the index + 1 to pull matching quote

feeling_number = ""
feelings.each do |feels|
  if feels == feeling
    feeling_number = feelings.index(feels) + 1
  end
end

time = Time.new.to_s

create_tracker(motivationator_db, first_name, last_name, feeling_number, feeling_number, time)

puts "Would you like a history of past dates and feelings of struggle?(type y or n)"
history = gets.chomp

if history == "y"
# Pulls feeling and date for each entered instance
  puts pull_tracker(motivationator_db)
  puts "Hope this quote helps!"
else
  puts "No problem, hope this quote helps!"
end

# Prints quote to match feeling entered
puts pull_quote(motivationator_db, feeling_number)





