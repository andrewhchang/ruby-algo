# The goal here is to determine the maximum profit of a single buy/sell transaction.
# An array of stock prices correspond to the day [2, 5, 6, 4] i.e. day 3 price = $6
# Return maximum possible profit e.g. for above MP = $4, buy at $2 sell at $6
# Strategy: we only really care about the lowest price we've "seen", as that will
# always yield the maximum profit when sold. Everyday we calculate profit if the price
# is higher than our current lowest value. If its higher than our current max profit,
# we get new max profit. If we can't profit, we check if its lower than our current
# cheapest stock, and replace if true.

def max_profit(prices)
    lowest = prices[0]
    max_profit = 0
    (1..prices.length - 1).each { |i|
        if prices[i] > lowest
            max_profit = [max_profit, prices[i] - lowest].max
        elsif prices[i] < lowest
            lowest = prices[i]
        end
    }
    return max_profit
end
