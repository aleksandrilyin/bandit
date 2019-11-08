require './random_engine'

print 'Сколько вам лет? '
age = gets.strip.to_i

print 'Хотите играть? (Y/N) '
answer = gets.strip.capitalize

if age >= 18 && answer == 'Y'
  puts 'Хорошо, поиграем!'

  money = 100
  bet = 5

  while money >= bet do

    puts 'Нажмите Enter, чтобы дернуть ручку'
    gets

    x = rand(0..9)
    y = rand(0..9)
    z = rand(0..9)

    puts 'Комбинация'

    # Рандомное число x
    RandomEngine.get_random_value x

    puts

    # Рандомное число y
    RandomEngine.get_random_value y

    puts

    # Рандомное число z
    RandomEngine.get_random_value z

    puts

    if x == y && x == z && x == 0 # 000
      puts 'Ваш баланс обнулен!'
      money = 0
    elsif x == y && x == z # x == y == z
      puts "Вам зачислено #{10 * x}$"
      money = money + 10 * x
    elsif x == y || y == z
      puts 'Вам зачислено 3$'
      money = money + 3
    else
      puts "У вас списано #{bet}$"
      money = money - bet
    end

    puts "Осталось денег: #{money}$"

    if money <= 0
      puts 'У вас закончились деньги. Вы проиграли'
    elsif money < bet
      puts 'Вам не хватает денег, чтобы сделать ставку. Вы проиграли'
    elsif money >= 150
      puts 'Хотите забрать деньги? (Y/N) '
      win = gets.strip.capitalize

      if win == 'Y'
        puts 'Поздравляем! Вы выиграли!'
        1.upto(money) do |w|
          print '$'
          sleep 0.03
        end
        break
      elsif win == 'N'
        puts 'Хорошо, продолжаем'
      else
        puts 'Ошибка, не могу понять ваше желание. Продолжаем'
      end
    end
  end

elsif age == '' || answer == ''
  puts 'Ошибка, не могу понять ваше желание'

elsif age < 18
  puts 'Вам еще нет 18 лет!'

elsif age >= 18 && answer == 'N'
  puts 'Не хотите играть - не надо'

else
  puts 'Ошибка, не могу понять ваше желание'
end

puts "\nПрограмма закончена, все права защищены :)"
sleep 1
exit
