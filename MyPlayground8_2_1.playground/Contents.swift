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

func dayOfWeek(_ y: Int, _ m: Int, _ d: Int) -> Int {
    var y = y, m = m
    
    if m < 3 {
        m += 12; y -= 1
    }
    
    let leap = y + y / 4 - y / 100 + y / 400
    return (leap + (13 * m + 8) / 5 + d) % 7
}

class DateInfo : DayOfMonth {
    var year: Int
    var dow: Int
    init(_ y: Int, _ m: Int, _ d: Int) {
        year = y
        dow = dayOfWeek(y, m, d)
        super.init(month: m, day: d)
    }
}

var diA = DateInfo.init(2017, 4, 3)
print(diA) // 04/03
print(diA.dow) // 1

class CalendarDate : DateInfo {
    static let namesOfDays = [
        "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"
    ]

    var dweek = String()

    override init(_ y:Int, _ m:Int, _ d:Int) {
        super.init(y, m, d)
        dweek = CalendarDate.namesOfDays[dow]
    }

    convenience init(_ m:Int, _ d:Int, year:Int = 2020) {
        self.init(year, m, d)
    }

    override var day:Int {
        didSet {
            dow = dayOfWeek(year, month, day)
            dweek = CalendarDate.namesOfDays[dow]
        }
    }

    override var description: String {
        return "\(year)/" + super.description + "(\(dweek))"
    }
}

var cdA = CalendarDate.init(4, 4, year: 2017)
print(cdA) // 2017/04/04(Tue)
cdA.day = 5
print(cdA) // 2017/04/05(Wed)