
struct Clock {
    var hour = 0
    var min  = 0
    
    /// 時刻を進める
    ///
    /// - Parameter min: 進める分数
    mutating func plus(min: Int) {
        
        let tempMin = self.min + min
        
        if tempMin >= 60 {
            self.min = tempMin % 60
            let tmpHour = self.hour + (tempMin / 60)
            self.hour = tmpHour % 24
        } else {
            self.min = tempMin
        }
    }
    
    /// 1分進める
    mutating func increment() {
        self.plus(min: 1)
    }
    
    /// 時刻を表示する
    func printString() {
        let printHour = hour < 10 ? " \(hour)" :  "\(hour)"
        let printMin  = min  < 10 ? "0\(min)"  :  "\(min)"
        print(printHour + ":" + printMin)
    }
}

var watch = Clock(hour: 23, min: 45)
watch.printString()
watch.plus(min: 14)
watch.printString()
watch.increment()
watch.printString()