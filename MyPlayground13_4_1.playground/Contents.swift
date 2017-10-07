// 13.4 クロージャと強い参照の循環

class TaxtFare {
    let firstMeters, flagDown: Int
 
    let upMeters, upCharge: Int
    
    lazy var daytime: (Int) -> Int = self.meter(midnight: false)
    lazy var nighttime: (Int) -> Int = self.meter(midnight: true)
    
    init(first: (m: Int, Int), after: (m: Int, Int)) {
        (firstMeters, flagDown) = first
        (upMeters, upCharge) = after
    }
    
    deinit {
        print("deinit: TaxiFare")
    }
    
    func meter(midnight: Bool) -> (Int) -> Int {
        return {
            (dist: Int) in
            var distance = dist
            
            if midnight {
                distance = Int(Double(dist) * 1.2)
            }
            
            var fare = self.flagDown
            
            distance -= self.firstMeters
            
            if (distance > 0) {
                fare += (distance / self.upMeters + 1) * self.upCharge
            }
            
            return fare
        }
    }
}

do {
    var tokyo = TaxtFare(first: (m: 2000, 730), after: (m: 280, 90))
    var osaka = TaxtFare(first: (m: 2000, 680), after: (m: 266, 80))
    var kyoto = TaxtFare(first: (m: 1700, 620), after: (m: 276, 80))
    
    print("\t東京\t京都")
    
    for d in stride(from: 1000, to: 5000, by: 1000) {
        print("\(d):\t\(tokyo.daytime(d))\t\(kyoto.daytime(d))")
    }
}