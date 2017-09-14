class BonusDrink
  @@BONUS_THLESHOLD = 3

  def self.total_count_for(amount)
    drink_count = empty_count = amount
    while empty_count >= @@BONUS_THLESHOLD
      bonus_count, rest_count = empty_count.divmod(@@BONUS_THLESHOLD)
      drink_count += bonus_count
      empty_count = bonus_count + rest_count
    end
    drink_count
  end
end
