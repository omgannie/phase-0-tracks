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
