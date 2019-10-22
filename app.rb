print "Сколько Вам лет? "
age = gets.strip.to_i

print "Хотите играть? (Y/N) "
answer = gets.strip.capitalize

if age >= 18 && answer == "Y"
  puts "Хорошо, поиграем!"

  money = 100
  bet = 5

  while money >= bet do

    puts "Нажмите Enter, чтобы дернуть ручку"
    gets

    x = rand(0..9)
    y = rand(0..9)
    z = rand(0..9)

    puts "Комбинация"

    # Рандомное значение x
    10.times do |xx|
      number = rand(0..9)
      if xx < 9
        print number
        print "\r"
        sleep 0.08
      else
        print x
      end
    end

    puts

    # Рандомное значение y
    10.times do |yy|
      number = rand(0..9)
      if yy < 9
        print number
        print "\r"
        sleep 0.08
      else
        print y
      end
    end

    puts

    # Рандомное значение z
    10.times do |zz|
      number = rand(0..9)
      if zz < 9
        print number
        print "\r"
        sleep 0.08
      else
        print z
      end
    end

    puts

    if x == y && x == z && x == 0 # 000
      puts "Ваш баланс обнулен!"
      money = 0

    elsif x == y && x == z # x == y == z
      puts "Вам зачислено #{10 * x}$"
      money = money + 10 * x

    else
      puts "У Вас списано #{bet}$"
      money = money - bet
    end

    puts "Осталось денег: #{money}$"

    if money < bet
      puts "У Вас закончились деньги, Вы проиграли"
    end
  end

elsif age < 18
  puts "Вам еще нет 18 лет!"

elsif age >= 18 && answer == "N"
  puts "Не хотите играть - не надо"

else
  puts "Ошибка, не могу понять Ваше желание"
end

puts "Программа закончена, все права защищены :)"
sleep 1
exit
