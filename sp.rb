#require 'pry-byebug'

stocks = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(stocks)
  profit_arr = []
  buy_sell_arr = []
  max_profit_days = []

  stocks.each_with_index do |buy, index|
    stocks[index..-1].each do |sell|
      buy_sell_arr.push([buy, sell])
      profit = sell - buy
      profit_arr.push(profit)
    end
  end

  max_profit_day = profit_arr.index(profit_arr.max)
  buy_sell_values = buy_sell_arr[max_profit_day]
  max_buy_day = stocks.index(buy_sell_values[0])
  max_sell_day = stocks.index(buy_sell_values[1])
  max_profit_days.push(max_buy_day, max_sell_day)
  max_profit_days
end

# expected => [1, 4] for a profit of $15 - $3 == $12
p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])