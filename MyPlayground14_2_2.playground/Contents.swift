// 14.2 ジェネリック関数の定義

// List14-3
func mySwap<T: Comparable>(little a: inout T, great b: inout T) {
    if a > b {
        let t = a; a = b; b = t
    }
}

struct Time: Comparable, CustomStringConvertible {
    let hour, min: Int
    
    static func ==(lhs: Time, rhs: Time) -> Bool {
        return lhs.hour == rhs.hour && lhs.min == rhs.min
    }
    
    static func <(lhs: Time, rhs: Time) -> Bool {
        if lhs.hour == rhs.hour {
            return lhs.min < rhs.min
        }
        
        return lhs.min < rhs.hour
    }
    
    var description: String {
        let h = hour < 10 ? " \(hour)" : "\(hour)"
        let m = min < 10 ? "0\(min)" : "\(min)"
        
        return h + ":" + m
    }
}

var meeting = Time(hour: 13, min: 30)
var lunch = Time(hour: 12, min: 0)

mySwap(little: &meeting, great: &lunch)
print(meeting)