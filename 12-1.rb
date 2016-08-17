#Encoding:UTF-8
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

heros_antiheros = {
    "Бэтмен" => "Джокер",
    "Холмс" => "Мориарти",
    "Буратино" => "Карабас-Барабас",
    "Моцарт" => "Сальери"

}


puts "Врага какого персонажа вы хотите узнать?"

number_of_keys = 0 #кол-во ключей уже использованных

while number_of_keys !=4


  hero = STDIN.gets.encode("UTF-8").chomp


  if heros_antiheros.has_key?(hero)
    puts "Враг этого героя : #{heros_antiheros[hero]}"

    heros_antiheros.delete(hero)
    number_of_keys += 1

  else
    puts "Не удалось найти врага"
  end

  if number_of_keys == 4
    puts "К сожалению, в нашем списке закончились герои "
  end

end