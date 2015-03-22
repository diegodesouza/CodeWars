def next_birthday_of_the_week(birthday)
  count = 0
  day = birthday.cwday
  while true
    birthday = birthday.next_year
    count += 1
    break if day == birthday.cwday
  end
  count
end
