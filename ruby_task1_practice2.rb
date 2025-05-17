def most_frequent_elements(array)
  frequencies = Hash.new(0)

  array.each { |num| frequencies[num] += 1 }

  max_freq = frequencies.values.max
  most_frequent = frequencies.select { |_, v| v == max_freq }.keys

  puts "Найчастіше зустрічається: #{most_frequent.join(', ')}"
end

most_frequent_elements([1, 3, 1, 3, 2, 1])  
most_frequent_elements([4, 4, 5, 6, 6, 5])  