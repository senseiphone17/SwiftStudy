struct Ounce {
    var mL: Double = 0.0
    static let ounceUS = 29.5735
    init(ounce: Double) {
        self.ounce = ounce
    }
    
    var ounce: Double {
        get {
            return mL / Ounce.ounceUS
        }
        
        set {
            mL = newValue * Ounce.ounceUS
        }
    }
}

//protocol ExpressibleByFloatLiteral {
//    typealias FloatLiteralType
//    init(floatLiteral value: Self.FloatLiteralType)
//}

extension Ounce : ExpressibleByFloatLiteral {
    init(floatLiteral value:Double) {
        self.init(ounce: value)
    }
}

var a: Ounce
a = 10.0
print("\(a.mL)mL") // 295.735mL