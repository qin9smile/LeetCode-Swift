/// 执行时间20ms
func maxProfit(_ prices: [Int]) -> Int {
    guard !prices.isEmpty else {
        return 0
    }
    
    var profit: Int = 0
    
    for i in 0..<(prices.count - 1) {
        let _profit = prices[i + 1] - prices[i]
        if _profit > 0 {
            profit += _profit
        }
    }
    
    return profit
}


/// 执行32ms 按理说应该更快，并不知道为什么慢了。。。
func maxProfit1(_ prices: [Int]) -> Int {
    guard !prices.isEmpty else {
        return 0
    }
    
    var profit: Int = 0
    
    for i in 0..<(prices.count - 1) where prices[i + 1] > prices[i] {
        profit += prices[i + 1] - prices[i]
    }
    
    return profit
}