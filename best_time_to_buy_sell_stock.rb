def max_profit(prices)
  max_pro = 0
  min_price = prices.first
  prices.each do |cur_price|
    max_pro = [max_pro,  cur_price-min_price].max
    min_price = [min_price, cur_price].min
  end
  return max_pro
end

prices = [2,1,3,5,2,8,0,1,7,2]
puts max_profit(prices)
