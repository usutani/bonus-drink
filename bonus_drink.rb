class BonusDrink
  def self.total_count_for(amount)
    self.calc_bottles(amount, amount)
  end

  def self.calc_bottles(amount, empty_bottles)
    return amount if empty_bottles < 3
    bonus, amari = empty_bottles.divmod(3)
    calc_bottles(amount + bonus, bonus + amari)
  end
end
