def train_fare(age)
  # 12歳以上は200円
  if age >= 12
    puts 200
  # 6歳以上12歳未満は100円
  elsif 6 <= age and age < 12
    puts 100
  # 6歳未満は無料
  else
    puts 0
  end
end

train_fare(12)
train_fare(6)
train_fare(5)