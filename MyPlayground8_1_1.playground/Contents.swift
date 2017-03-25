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
