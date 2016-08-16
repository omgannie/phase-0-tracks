# COFFEE DELIVERY PROGRAM

# require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("orders.db")
db.results_as_hash = true

# string delimiters
# create table command for user info
create_userinfo_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS user_info(
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
  CREATE TABLE IF NOT EXISTS order_history(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255)
  )
SQL

# create tables in db file
db.execute(create_userinfo_table_cmd)
db.execute(create_history_table_cmd)

# add test user & order
#db.execute("INSERT INTO order_history(item, user_id) VALUES('Cappuccino', 1)")
#db.execute("INSERT INTO users(name, email, address, city, state, zipcode, card_info) VALUES('Annie Oh', 'omgannie@gmail.com', '1234 Colorful Rd.', 'Chicago', 'IL', 60606, 0000000000000000)")
#users = db.execute("SELECT * FROM users")
#p users[0]['name']

# user interface
isDone = false
puts "Get coffee on demand! Starting up coffee delivery app now..."

# initialize menu as a hash
menu = {
  "Regular Coffee" => 1.00,
  "Iced Coffee" => 2.00,
  "Macchiato" => 3.00,
  "Cappuccino" => 4.00,
  "Latte" => 2.50,
  "Cafe au Lait" => 2.00,
  "Mocha" => 4.00
}

# collect data from user
puts "Enter your name:"
name = gets.chomp

puts "Enter email:"
email = gets.chomp

puts "Enter address:"
address = gets.chomp

puts "Enter city:"
city = gets.chomp

puts "Enter state:"
state = gets.chomp

puts "Enter zipcode:"
zipcode = gets.chomp

puts "Enter card info:"
card_info = gets.chomp

# store data into users table
db.execute("INSERT INTO user_info(name, email, address, city, state, zipcode, card_info) VALUES ('#{name}', '#{email}', '#{address}', '#{city}', '#{state}', '#{zipcode}', '#{card_info}')")

# prompt user for order
while isDone != true
  puts "What can I get for you today? Type 'menu' to pull up menu."
  order_item = gets.chomp

  if order_item == 'menu'
    menu.each do |item, price|
      puts "#{item}......................#{price}"
    end
  else
    db.execute("INSERT INTO order_history(item) VALUES ('#{order_item}')")
    isDone = true
  end
end

# retrieve data
item_ordered = db.execute("SELECT item FROM order_history")
current_address = db.execute("SELECT address, city, state, zipcode FROM user_info")
puts "Your order of #{item_ordered} will be delivered to #{current_address}. Please let us know if you need to update your address."

# retrieve more data
price = menu["#{order_item}"]
current_email = db.execute("SELECT email FROM user_info")
puts "Your receipt and total of #{price} will be sent to #{current_email}."

# end PROGRAM
puts "Thanks for ordering coffee with us! Bye!"
