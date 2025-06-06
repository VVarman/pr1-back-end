#1.Дано цілочисельний масив. Необхідно вивести спочатку його елементи з парними індексами, а потім - з непарними.
a = [1, 2, 3, 4, 5]
puts a.each_index.select { |i| i.even? }.map { |i| a[i] } + a.each_index.select { |i| i.odd? }.map { |i| a[i] }

#2.Дано цілочисельний масив. Необхідно вивести спочатку його елементи з непарними індексами, а потім - парними.
a = [1, 2, 3, 4, 5]
puts a.each_index.select { |i| i.odd? }.map { |i| a[i] } + a.each_index.select { |i| i.even? }.map { |i| a[i] }
#3.Дано цілочисельний масив. Вивести номер першого з тих його елементів, які задовольняють подвійній нерівності: A[0] < A[i] < A[-1]. Якщо таких елементів немає, то вивести [ ].
a = [1, 2, 3, 4, 5]
i = a.index { |x| x > a[0] && x < a[-1] }
puts i.nil? ? [] : i
#4.Дано цілочисельний масив. Вивести номер останнього з тих його елементів, які задовольняють подвійній нерівності: A[0] < A[i] < A[-1]. Якщо таких елементів немає, то вивести [ ].
a = [1, 2, 3, 4, 5]
i = a.rindex { |x| x > a[0] && x < a[-1] }
puts i.nil? ? [] : i
#5.Дано цілочисельний масив. Перетворити його, додавши до парних чисел перший елемент. Перший і останній елементи масиву не змінювати.
a = [1, 2, 3, 4, 5]
result = a.each_with_index.map do |x, i|
  if i != 0 && i != a.size - 1 && x.even?
    x + a[0]
  else
    x
  end
end
puts result
#6.Дано цілочисельний масив. Перетворити його, додавши до парних чисел останній елемент. Перший і останній елементи масиву не змінювати.
a = [1, 2, 3, 4, 5]
result = a.each_with_index.map do |x, i|
  if i != 0 && i != a.size - 1 && x.even?
    x + a[-1]
  else
    x
  end
end
puts result
#7.Дано цілочисельний масив. Перетворити його, додавши до непарних чисел останній елемент. Перший і останній елементи масиву не змінювати.
a = [1, 2, 3, 4, 5]
result = a.each_with_index.map do |x, i|
  if i != 0 && i != a.size - 1 && x.odd?
    x + a[-1]
  else
    x
  end
end
puts result
#8.Дано цілочисельний масив. Перетворити його, додавши до непарних чисел перший елемент. Перший і останній елементи масиву не змінювати.
a = [1, 2, 3, 4, 5]
result = a.each_with_index.map do |x, i|
  if i != 0 && i != a.size - 1 && x.odd?
    x + a[0]
  else
    x
  end
end
puts result
#9.Дано цілочисельний масив. Замінити всі додатні елементи на значення мінімального.
a = [1, 2, -3, 4, -5]
min = a.min
result = a.map { |x| x > 0 ? min : x }
puts result
#10.Дано цілочисельний масив. Замінити всі додатні елементи на значення максимального.
a = [1, 2, 3, 4, 5]
max = a.max
result = a.map { |x| x > 0 ? max : x }
puts result
#11.Дано цілочисельний масив. Замінити всі від'ємні елементи на значення мінімального.
a = [-1, -2, 3, -4, 5]
min = a.min
result = a.map { |x| x < 0 ? min : x }
puts result
#12.Дано цілочисельний масив. Замінити всі від'ємні елементи на значення максимального.
a = [1, -2, -3, -4, 5]
max = a.max
result = a.map { |x| x < 0 ? max : x }
puts result
#13.Дано цілочисельний масив. Здійснити циклічний зсув елементів масиву вліво на одну позицію.
a = [1, 2, 3, 4, 5]
result = a.rotate
puts result
#14.Дано цілочисельний масив. Здійснити циклічний зсув елементів масиву вправо на одну позицію.
a = [1, 2, 3, 4, 5]
result = a.rotate(-1)
puts result
#15.Дано цілочисельний масив. Перевірити, чи утворюють елементи арифметичну прогресію. Якщо так, то вивести різницю прогресії, якщо ні - вивести nil.
a = [1, 2, 3, 4, 5]
if a.size < 2
  puts nil
else
  diff = a[1] - a[0]
  ap = a.each_cons(2).all? { |x, y| y - x == diff }
  puts ap ? diff : nil
end

#Завдання 2
def calculator
  puts "Привіт! Це калькулятор на Ruby."

  print "Введіть перше число: "
  num1 = gets.chomp.to_f

  print "Введіть оператор (+, -, *, /): "
  operator = gets.chomp

  print "Введіть друге число: "
  num2 = gets.chomp.to_f

  result = case operator
           when '+'
             num1 + num2
           when '-'
             num1 - num2
           when '*'
             num1 * num2
           when '/'
             if num2 == 0
               "Ділення на нуль неможливе!"
             else
               num1 / num2
             end
           else
             "Невідомий оператор!"
           end

  puts "Результат: #{result}"
end

calculator
#Завдання 3
# 3.1 Сценарій: Необхідно запланувати регулярні фонові завдання, такі як відправлення щотижневих електронних листів або генерація звітів опівночі.
Gem: sidekiq
# 3.2 Ваш веб-додаток потребує безпечного управління завантаженням файлів, включаючи зображення та документи, і можливо зберігати їх у хмарному сервісі.
Gem: active_storage
# 3.3 Ваш веб-сайт містить розділ з великою кількістю статей, наприклад, блог або новинний портал. З часом кількість статей зросла до сотень або навіть тисяч, і відвідувачам сайту стає важко знайти потрібну інформацію.
Gem: pagy
