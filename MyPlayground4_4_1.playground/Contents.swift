/// failable init

struct Time {
    let is24h: Bool
    var hour = 0
    var min  = 0
    
    init?(_ h: Int, _ m: Int, is24h: Bool = false) {
        let maxH = is24h ? 23 : 11
        
        if h < 0 || h > maxH || m < 0 || m > 59 {
            return nil
        }
        
        self.is24h = is24h
        hour = h
        min = m
    }
    
    init(time: Time, is24h: Bool) {
        var h = time.hour
        if !is24h && time.hour > 11 {
            h -= 12
        }
        self.is24h = is24h
        hour = h
        min = time.min
    }
}

if let timeA = Time(19, 30, is24h: true) {
    print("\(timeA.hour):\(timeA.min)") // 19:30
}

// var timeB: Time = Time(20, 45)! // エラー
var timeB: Time = Time(10, 45)!

var timeC: Time? = Time(21, 15, is24h: true)
var timeD: Time = Time(time: timeC!, is24h: false)
print("\(timeD.hour):\(timeD.min)") // 9:15