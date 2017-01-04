/// Computed property

struct Ounce {
    var milliLiter: Double = 0.0
    
    static let avoirdupoisOunce = 28.3495
    
    init(ounce: Double) {
        self.ounce = ounce
    }
    
    var ounce: Double {
        get { return milliLiter / Ounce.avoirdupoisOunce }
        set { milliLiter = newValue * Ounce.avoirdupoisOunce }
    }
}

var ounceA = Ounce(ounce: 3.0)
print(ounceA.milliLiter) // 85.0485
ounceA.ounce += 7.0
print(ounceA.ounce) // 10.0
print(ounceA.milliLiter) // 283.495

var ounceB = Ounce(ounce: 5.0)
print("\(ounceA.milliLiter), \(ounceB.milliLiter)") // 283.495, 141.7475
print("")

swap(&ounceA, &ounceB)
print("\(ounceA.milliLiter), \(ounceB.milliLiter)") // 141.7475, 283.495
print("\(ounceA.ounce), \(ounceB.ounce)") // 5.0, 10.0
print("")

swap(&ounceA.milliLiter, &ounceB.milliLiter)
print("\(ounceA.milliLiter), \(ounceB.milliLiter)") // 283.495, 141.7475
print("\(ounceA.ounce), \(ounceB.ounce)") // 10.0, 5.0
print("")

swap(&ounceA.milliLiter, &ounceB.milliLiter)
print("\(ounceA.milliLiter), \(ounceB.milliLiter)") // 283.495, 141.7475
print("\(ounceA.ounce), \(ounceB.ounce)") // 10.0, 5.0
print("")

swap(&ounceA.ounce, &ounceB.ounce)
print("\(ounceA.milliLiter), \(ounceB.milliLiter)") // 283.495, 141.7475
print("\(ounceA.ounce), \(ounceB.ounce)") // 10.0, 5.0