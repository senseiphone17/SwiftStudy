class DayOfMonth : CustomStringConvertible {
    var month, day: Int
    
    init(month: Int, day: Int) {
        self.month = month
        self.day = day
    }
    
    var description: String {
        return DayOfMonth.twoDigits(month) + "/" + DayOfMonth.twoDigits(day)
    }
    
    class func twoDigits(_ n: Int) -> String {
        let i = n % 100
        if (i < 10) {
            return "0\(i)"
        }
        return "\(i)"
    }
}

var domA = DayOfMonth.init(month: 12, day: 1)
print(domA) // 12/01
