class Time {
    var hour = 0, min = 0
    
    init(hour: Int, min: Int) {
        self.hour = hour; self.min = min
    }
    
    func advance(min: Int) {
        let m = self.min + min
        if m >= 60 {
            self.min = m % 60
            let t = self.hour + m / 60
            self.hour = t % 24
        } else {
            self.min = m
        }
    }
    
    func increment() {
        self.advance(min: 1)
    }
    
    func toString() -> String {
        let h = hour < 10 ? " \(hour)":"\(hour)"
        let m = min < 10 ? "0\(min)":"\(min)"
        
        return h + ":" + m
    }
}

class Time12 : Time, CustomStringConvertible {
    var pm: Bool
    init(hour: Int, min: Int, pm: Bool) {
        self.pm = pm
        super.init(hour: hour, min: min)
    }
    
    override convenience init(hour: Int, min: Int) {
        let isPm = hour >= 12
        self.init(hour: isPm ? hour - 12 : hour, min: min, pm: isPm)
    }
    
    override func advance(min: Int) {
        super.advance(min: min)
        while hour >= 12 {
            hour -= 12
            pm = !pm
        }
    }
    
    var description: String {
        return toString() + " " + (pm ? "PM" : "AM")
    }
}

let t = Time(hour: 10, min: 20)
let t2 = Time12(hour: 23, min: 40)

switch t {
case let u as Time12:
    print("Time12:", u)
default:
    print("Time:", t.toString()) // Time: 10:20
}

switch t2 {
case let u as Time12:
    print("Time12:", u) // Time12: 11:40 PM
default:
    print("Time:", t.toString())
}


let tA = Time12(hour: 3, min: 45, pm: true)

if let tA2 = tA as? Time12 {
    print(tA2) // 3:45 PM
}

var array = [Time12(hour: 13, min: 20), Time(hour: 18, min: 45)]
print( type(of: array) ) // Array<Time>

var every: [Any] = [ Time12(hour: 1, min: 16), "日本", 22342 ]
print( type(of: every) ) // Array<Any>