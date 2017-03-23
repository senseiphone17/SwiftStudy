infix operator ^^ : LogicalDisjunctionPrecedence

func ^^ (lhs: Bool, rhs: @autoclosure() -> Bool) -> Bool {
    if lhs { return false }
    return !rhs()
}

if ( false ^^ false ) {
    print("true")
}


if ( true ^^ false ) {

} else {
    print("false")
}

precedencegroup RoundPrecedence {
    higherThan: AdditionPrecedence
    lowerThan: MultiplicationPrecedence
}

infix operator %% : RoundPrecedence

func %% (lhs: Int, rhs: Int) -> Int {
    return lhs - lhs % rhs
}

print(283548328 %% 100) // 283548300
print(6 + 2335 %% 10 * 2) // 2326

print("")

struct Time: Comparable, CustomStringConvertible {
    let hour, min: Int
    
    static func ==(lhs: Time, rhs: Time) -> Bool {
        return lhs.hour == rhs.hour && lhs.min == rhs.min
    }
    
    static func <(lhs: Time, rhs: Time) -> Bool {
        if lhs.hour == rhs.hour {
            return lhs.min < rhs.min
        }
        return lhs.hour < rhs.min
    }
    
    var description: String {
        let h = hour < 10 ? " \(hour)":"\(hour)"
        let m = min < 10 ? " \(min)":"\(min)"
        
        return h + ":" + m
    }
}

let t1 = Time(hour:10, min:0)
let t2 = Time(hour:15, min:30)
let t3 = Time(hour:23, min:15)
let t4 = Time(hour:23, min:15)

print(t1 == t2) // false
print(t3 == t4) // true
print(t1 > t2) // false
print(t1 < t2) // true