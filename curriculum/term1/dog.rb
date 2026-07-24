class Dog

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def bark
    #　ワンワンと出力する
    puts 'ワンワン'
  end

  def introduce
    puts "ぼくの名前は#{@name}だよ"
  end
end

#　インスタンスを作成する
dog_p = Dog.new('ポチ')
dog_t = Dog.new('タロウ')
dog_h = Dog.new('ハチ')

dogs = [dog_p, dog_t, dog_h]

dogs.each do |dog|
  dog.introduce
end
