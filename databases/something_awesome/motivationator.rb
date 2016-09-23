# Pseudocode
# Require gems
# Create Database
# Create 4 tables - 1 for quotes, 2 for feelings, 3 for user info, 4 is main table to track
# Create user interface to ask how feel today
# Store the date, name, and feeling in table three
# Retrieve quote that matched feeling entered and print to screen

# require gems
require 'sqlite3'

# # create SQLite3 database
motivationator_db = SQLite3::Database.new("motivationator.db")

# # create_table_quotes = <<-SQL
# #   CREATE TABLE IF NOT EXISTS quotes(
# #     id INTEGER PRIMARY KEY,
# #     quote VARCHAR(255),
# #     feeling_id INT
# #   )
# # SQL

create_table_feelings = <<-SQL
  CREATE TABLE IF NOT EXISTS feelings(
    id INTEGER PRIMARY KEY,
    feeling_name VARCHAR(255)
  )
SQL

# # create_table_tracker = <<-SQL
# #   CREATE TABLE IF NOT EXISTS tracker(
# #     id INTEGER PRIMARY KEY,
# #     feeling_id INT,
# #     quote_id INT,
# #     enter_date DATE,
# #     user_id INT
# #   )
# # SQL

# # create_table_user = <<-SQL
# #   CREATE TABLE IF NOT EXISTS user(
# #     id INTEGER PRIMARY KEY,
# #     first_name VARCHAR(255),
# #     last_name VARCHAR(255)
# #   )
# # SQL


motivationator_db.execute(create_table_feelings)
# # motivationator_db.execute(create_table_tracker)
# # motivationator_db.execute(create_table_user)
# # motivationator_db.execute(create_table_quotes)

# # def create_quote(db, quote, feeling_id)
# #   db.execute("INSERT INTO quotes (quote, feeling_id) VALUES (?, ?)", [quote, feeling_id])
# # end



#Create feeling database and enter feelings
=begin
def create_feeling(db, feeling_name)
  db.execute("INSERT INTO feelings (feeling_name) VALUES (?)" , [feeling_name])
end

feelings = ["frustrated", "sad", "tired", "angry", "uninspired", "defeated"]


feelings.length.times do |feeling|
	create_feeling(motivationator_db, feelings[feeling])
end





