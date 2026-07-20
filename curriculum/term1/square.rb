def square(array)
  # 配列の各値をmapメソッドを用いて2乗する
  return array.map {|n| n**2}
end

squared_numbers = square([5, 7, 10])
print squared_numbers