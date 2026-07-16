def fizz_buzz
  # 1から100までのループを開始する
  for num in 1..100 do
    # 3かつ5の倍数の時、FizzBuzzを出力
    if num % 3 == 0 and num % 5 == 0
      print "FizzBuzz, " 
    # 3の倍数の時、Fizzを出力
    elsif num % 3 == 0
      print "Fizz, "
    # 5の倍数の時、Buzzを出力
    elsif num % 5 == 0
      print "Buss, "
    else
      print "#{num}, "
    end
  end
end

fizz_buzz()