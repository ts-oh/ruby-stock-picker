# require 'pry-byebug'

stocks = [17, 3, 6, 9, 15, 8, 6, 1, 10]

# stock picker method takes array of stock prices as parameter
def stock_picker(stocks)
  stocks.each_with_index do |_, index|
    new_array = []
    stocks[index..-1].each do |value|
      new_array.push(value)
    end
    p new_array
  end

    # once first element is finished do same for second element for the whole array
    # find the largest profit difference
    # return the index number that gave largest profit difference
end

# expected => [1,4] for a profit of $15 - $3 == $12
stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
