def calculate(num1, num2, operator)
  # num1, num2が整数かどうかを確認
  begin
    Integer(num1)
    Integer(num2)
  rescue ArgumentError
    'num1、 num2 には整数を入力してください'
  end
  # 演算子に+, -, *, /のいづれかが選択されているかを確認
  if operator == '+'
    num1 + num2
  elsif operator == '-'
    num1 - num2
  elsif operator == '*'
    num1 * num2
  elsif operator == '/'
    num1 / num2
  else
    '演算子には  +、-、*、/ のいずれかを使用してください'
  end
end

puts '1番目の整数を入力してください:'
num1 = gets.chomp.to_i

puts '2番目の整数を入力してください:'
num2 = gets.chomp.to_i

puts '演算子(+, -, *, /)を入力してください:'
operator = gets.chomp

# ゼロによる割り算の際の例外処理
begin
  result = calculate(num1, num2, operator)
  puts result
rescue ZeroDivisionError
  puts 'ゼロによる割り算は許可されていません'
end
