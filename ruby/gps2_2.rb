# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # 1. initialize a hash
  # 2. take string of items, seperate by space
  # 3. set default quantity to zero
  # 4. print the list to the console [can you use one of your other methods here?]
# output: hash
list = {}

def create_list(list, string_of_items)
  item_array = string_of_items.split(" ")

  item_array.each do |item|
    list[item] = 1
  end

  return list
end

p create_list(list, "lemonade tomatoes onions icecream")

# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # 1. use hash, item, and quantity as parameters
  # 2. add item to hash, set quantity as value
# output: return updated list
def add_item(list, item, quantity)
  list[item] = quantity

  return list
end

#p add_item(list, "milk", 3)

# Method to remove an item from the list
# input: hash, item
# steps:
  # 1. use hash and item as parameters
  # 2. locate item in the hash as key
  # 3. delete located item (as key)
# output: return updated list
def remove_item(list, item)
  list.delete(item)

  list
end

# Method to update the quantity of an item
# input: hash, item and quantity
# steps:
  # 1. use hash, item, quantity as parameters
  # 2. locate item in hash as key
  # 3. set new value for item
# output: return updated list
def update_item(list, item, quantity)
  add_item(list, item, quantity)
end

p update_item(list, "lemonade", 2)
p update_item(list, "tomatoes", 3)
p update_item(list, "icecream", 4)

p remove_item(list, "lemonade")

p update_item(list, "icecream", 1)

# Method to print a list and make it look pretty
# input: hash
# steps:
  # 1. set program user interface template
  # 2. use item and value as parameters for iteration thru hash
  # 3. for each item, print "you want #number of #item!"
# output: print list in readable format
def print_list(list)
  puts "Here is your grocery list:"

  list.each do |item, quantity|
    puts "You want #{quantity} of #{item}!"
  end

end

print_list(list)

# Release 5: Reflect
# I realized that pseudocoding is especially important before producing initial solutions, and especially while working as a team.
# It is important for your teammate to know what you are thinking and pseudocoding helps clarify that.

# The trade off for using a hash in this challenge instead of an array is that it is easier to initialize and simplify and update as the program
# continues to return the results you want.
# A method returns the out, which is the updated version of the input, according to how the method is to manipulate the data.
# You can pass parameters as arguments into methods. Datatypes, booleans, strings, integers.
# You can pass information between methods by return the final output of each method.
# Well, for this challenge, I was convinced that using a global variable would work in order to manipulate all of the data that the challenge asked.
# However, using a global variable would've meant risking any part of the program to modify the data in the global variable in a way we wouldn't expect,
# making it harder to debug later on.
