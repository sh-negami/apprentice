class VendingMachine

  def initialize(m_name)
    @m_name = m_name
    @coin = false
  end
  
  def press_button
    if @coin
      @coin = false
      'cider'
    end
  end

  def deposit_coin(amount)
    if amount == 100
      @coin = true
    end
  end

  private

  def press_manufacturer_name
		@m_name
  end

end

vending_machine = VendingMachine.new('サントリー')
puts vending_machine.press_button

vending_machine.deposit_coin(150)
puts vending_machine.press_button

vending_machine.deposit_coin(100)
puts vending_machine.press_button

puts vending_machine.press_manufacturer_name