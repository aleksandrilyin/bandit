# encoding: utf-8

require_relative 'lib/random_engine'

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

    x = rand(10)
    y = rand(10)
    z = rand(10)

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
    elsif money >= 200
      puts 'Поздравляем! Вы выиграли!'
      1.upto(money) do |win|
        print '$'
        sleep 0.03
      end
      break
    end
  end

elsif age >= 18 && answer == 'N'
  puts 'Не хотите играть — не надо'

elsif age < 18
  puts 'Вам еще нет 18 лет!'

else
  puts 'Ошибка, не могу понять ваше желание'
end

puts "\nПрограмма закончена, все права защищены :)"
sleep 1
exit
