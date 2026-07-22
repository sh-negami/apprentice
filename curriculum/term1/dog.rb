class Dog
  def initialize(name)
    @name = name
  end

  def bark
    #　ワンワンと出力する
    puts 'ワンワン'
  end

  # attr_reader :name
  # def name
  #   @name
  # end

  # attr_writer
  # def name=(new_name)
  #   @name = new_name
  # end

  # def test(new_name)
  #   @name = new_name
  # end
  attr_accessor :name

  def introduce
    puts "ぼくの名前は#{@name}だよ"
  end
end

#　インスタンスを作成する
dog = Dog.new('ポチ')
puts dog.name
dog.bark

dog.introduce

dog.name = 'タロウ'
puts dog.name

dog.introduce
