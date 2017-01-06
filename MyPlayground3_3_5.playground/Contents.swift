/// property observer

struct Stock {
    let buyPrice: Int
    var isHigher = false
    var buyCount = 0
    
    init(price: Int) {
        buyPrice = price
        self.price = price
    }
    
    var price: Int {
        willSet {
            buyCount += 1
            isHigher = newValue > buyPrice
        }
        didSet {
            print("\(oldValue) => \(price)")
        }
    }
}

var stockA = Stock(price: 400)
stockA.price = 410 // 400 => 410
print("\(stockA.buyCount), \(stockA.isHigher)") // 1, true
stockA.price = 380 // 410 => 380
print("\(stockA.buyCount), \(stockA.isHigher)") // 2, false
stockA.price = 390 // 380 => 390
print("\(stockA.buyCount), \(stockA.isHigher)") // 3, false