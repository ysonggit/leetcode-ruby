# @param {Integer[]} prices
# @return {Integer}
# idea: sum up the difference of each increasing subsequence 
# for example
# prices = [1,2,0,4,3,7,6,7]
# max profit can be get by (2-1)+(4-0)+(7-3)+(7-6)= 10
def max_profit(prices)
    max_pro = 0
    if prices.size <= 1 
        return max_pro
    end 
    1.upto(prices.size-1) do |index|
        diff = prices[index] - prices[index-1] 
        max_pro += ( diff > 0 ) ? diff : 0
    end 
    return max_pro
end
