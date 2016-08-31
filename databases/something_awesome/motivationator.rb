# pseudocode
# input - feeling
# output - quote
# create a database
# create a tracker table that stores feeling entered with date entered 
# create a feelings table with a foreign key to tracker table
# create a quotes table with a foreign key to feelings table
# enter data into quotes table and feelings table
# create user interface that asks how the user is feeling
# if statement that prints the quote that relates to the feeling


#require gem
require 'sqlite3'

# create SQLite3 database
moti_db = SQLite3::Database.new("motivationator.db")

#create table
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS quotes(
    id INTEGER PRIMARY KEY,
    quote VARCHAR(255),
    
  )
SQL

#User interface
puts "How are you feeling today? Please choose one of the following: frustrated, sad, tired, angry, uninspired, or defeated"
feeling = gets.chomp

