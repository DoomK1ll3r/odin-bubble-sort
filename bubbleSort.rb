#!/usr/bin/env ruby

example_array = [5,4,10,6,7,3,8]

def bubble_sort(data)
  sorted_array = data.dup

  (sorted_array.length - 2).times do
    sorted_array[0..-2].each_with_index do
      |value, index|

      aux = 0

      if value.to_i > sorted_array[index + 1].to_i
        aux = value.to_i.dup
        sorted_array[index] = sorted_array[index + 1].to_i.dup
        sorted_array[index + 1] = aux
      end

    end
  end

  return sorted_array
end

sorted_array = bubble_sort(example_array)

p "original array: #{example_array}"
p "sorted array: #{sorted_array}"
