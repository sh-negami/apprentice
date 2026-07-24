class VendingMachine

  def initialize(m_name)
    #初期化
    @m_name = m_name
    @deposit = 0
    @cup = 0
  end
  
  def press_button(item)
    #　ボタンを押された時、条件に合えば商品を出力
    #　カップを使う商品であれば、カップが一つ以上あるかどうか,なければ出力なし
    if item.cup
      if @cup < 1
        return ''
      end
    end
    #　商品の値段以上にお金を預かっているか
    if @deposit >= item.price
      @deposit -= item.price
      puts item.name
      # カップを使う商品であれば、カップを一つ減らす
      if item.cup
        sub_cup(1)
      end
    end
  end

  def deposit_coin(amount)
    # 預かったお金
    # 100円のみに対応
    if amount == 100
      @deposit += 100
    end
  end

  def add_cup(num)
    #　カップを増やす
    @cup += num
  end

  private

  def press_manufacturer_name
		@m_name
  end

  def sub_cup(num)
    #　カップを減らす
    @cup -= num
    return nil
  end

end

class Item

  attr_reader :name, :price, :cup

  def initialize(name, price)
    @name = name
    @price = price
    @cup = false
  end
end

class Drink < Item
end

class CupCoffee < Item
  def initialize(name, price)
    super
    @cup = true
  end
end

class Snack < Item
end

hot_cup_coffee = CupCoffee.new('hot cup coffee', 100)
cider          = Drink.new('cider', 100)
snack          = Snack.new('potato chips', 150)
vending_machine = VendingMachine.new('サントリー')

vending_machine.deposit_coin(100)
vending_machine.deposit_coin(100)
puts vending_machine.press_button(cider)

puts vending_machine.press_button(hot_cup_coffee)
vending_machine.add_cup(1)
puts vending_machine.press_button(hot_cup_coffee)

puts vending_machine.press_button(snack)
vending_machine.deposit_coin(100)
vending_machine.deposit_coin(100)
puts vending_machine.press_button(snack)

