# COFFEE DELIVERY PROGRAM

# require gems
require 'sqlite3'

# create SQLite3 database
users_db = SQLite3::Database.new("users.db")
history_db = SQLite3::Database.new("order_history.db")
users_db.results_as_hash = true
history_db.results_as_hash = true

# string delimiters
# create table command for users
create_users_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS users(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    zipcode INT,
    card_info INT
  )
SQL

# create table command for order history
create_history_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS order_history (
    id INTEGER PRIMARY KEY,
    order VARCHAR(255),
    ordered_when DATETIME NOW(),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
  )
SQL

# create tables
users_db.execute(create_users_table_cmd)
history_db.execute(create_history_table_cmd)

# add test user & order
users_db.execute("INSERT INTO users(name, email, address, city, state, zipcode, card_info) VALUES('Annie Oh', 'omgannie@gmail.com', '1234 Colorful Rd.', 'Chicago', 'IL', 60606, 0000-0000-0000-0000)")

# user interface
