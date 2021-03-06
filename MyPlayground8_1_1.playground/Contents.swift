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

let t1 = Time(hour: 23, min: 4)
let t2 = t1
print(t1.toString()) // 23:04
t2.increment()
print(t1.toString()) // 23:05

t1.increment()
print(t2.toString()) // 23:06

print("")

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

let t12 = Time12.init(hour: 9, min: 40, pm: true)
print(t12.description) // 9:40 PM

print("")

var array = [Time]()

array.append(Time(hour: 8, min: 20))
array.append(Time12(hour: 14, min: 40))
array.append(Time12(hour: 4, min: 50, pm:true))

for t in array {
    if t is Time12 { print(t) }
    else {
        print(">", t.toString())
    }
}

// >  8:20
// 2:40 PM
// 4:50 PM

if let u = array[2] as? Time12 {
    print(u.pm ? "PM" : "AM") // PM
}

if let v = array[0] as? Time12 {
    print(v.pm ? "PM" : "AM") // 出力なし
}