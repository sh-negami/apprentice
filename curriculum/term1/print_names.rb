def print_names(names)
  # eachとwith_indexを使用
  # 開始番号は1
  names.each.with_index(1) do |name, index|
    puts "#{index}. #{name}"
  end
end

print_names(['上田', '田仲', '堀田'])