# Release 1
def fib(num)
  array = [0,1]

  if num == 0
    nil
  elsif num == 1
    array[0]
  elsif num == 2
    array[1]
  elsif num != 0 && num != 1
    while array.length < num
      array << array[-1] + array[-2]
    end
  end

  array

#   if array[99] == 218922995834555169026
#    puts "number"
#   end

end

p fib(100)

# Release 2
# sorting algorithm
# bubble sort

# watched this video for better understanding:
# https://www.youtube.com/watch?v=x9G7_1RvyB8&noredirect=1

def bubble_sort(array)
  n = array.length

  loop do
    # [1, 4, 1, 3, 4, 1, 3, 3]
    # [1, 1, 4, 3, 4, 1, 3, 3]
    # [1, 1, 3, 4, 4, 1, 3, 3]
    # [1, 1, 3, 4, 4, 1, 3, 3]

    swapped = false

    (n-1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

a = [1, 4, 1, 3, 4, 1, 3, 3]
p bubble_sort(a)

# the iteration block for actually sorting seems complex at first,
# but by breaking the code down, and pseudocoding what we expect
# the algorithm to produce as the final result, helped problem solve
# for the iteration.

# tackling the algorithm and as well as the one above it for fibonacci sequence
# was very frustrating. my partner and i kept pushing pieces of the puzzle,
# but did not realize that we would need to combine them in order for it to work.
