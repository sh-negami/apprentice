class VendingMachine

  def initialize(m_name)
    @m_name = m_name
    @deposit = 0
    @cup = 0
  end
  
  def press_button(item)
    
    if @deposit >= item.price
      @deposit -= item.price
      puts item.name
    end
  end

  def deposit_coin(amount)
    if amount == 100
      @deposit += 100
    end
  end

  def add_cup(num)
    @cup += num
  end

  private

  def press_manufacturer_name
		@m_name
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
  def initialize
    @cup = true
  end
end

hot_cup_coffee = CupCoffee.new('hot', 100)
cider = Item.new('cider', 100)
vending_machine = VendingMachine.new('サントリー')

vending_machine.deposit_coin(100)
vending_machine.deposit_coin(100)
puts vending_machine.press_button(cider)

puts vending_machine.press_button(hot_cup_coffee)
vending_machine.add_cup(1)
