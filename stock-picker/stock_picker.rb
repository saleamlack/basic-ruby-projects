def stock_picker(stock_price)
    best_days = []
    max_profit = 0
    price_buy = stock_price[0]
    day_buy = 0
    stock_price.each_with_index do |price_sell, day_sell|
        if price_buy > price_sell
            price_buy = price_sell
            day_buy = day_sell
        end

        profit = price_sell - price_buy
        if profit > max_profit
            max_profit = profit
            best_days = [day_buy, day_sell]
        end
    end
    best_days
end

p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])