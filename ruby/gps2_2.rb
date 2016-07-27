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

p create_list(list, "carrots apples cereal pizza")
# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # 1. use hash, item, and quantity as parameters
  # 2. add item to hash, set quantity as value
# output: return updated list

# Method to remove an item from the list
# input: hash, item
# steps:
  # 1. use hash and item as parameters
  # 2. locate item in the hash as key
  # 3. delete located item (as key)
# output: return updated list

# Method to update the quantity of an item
# input: hash, item and quantity
# steps:
  # 1. use hash, item, quantity as parameters
  # 2. locate item in hash as key
  # 3. set new value for item
# output: return updated list

# Method to print a list and make it look pretty
# input: hash
# steps:
  # 1. set program user interface template
  # 2. use item and value as parameters for iteration thru hash
  # 3. for each item, print "you want #number of #item!"
# output: print list in readable format
