/// Type property

struct DateAndString {
    let dateString: String
    let year: Int
    let month: Int
    let day: Int
    
    static let monthString = ["JAN", "FEB", "MAR", "APR", "MAY", "JUN",
                              "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"]
    
    static var isLongFormat = false
    
    init(_ year: Int, _ month: Int, _ day: Int) {
        self.year = year
        self.month = month
        self.day = day
        
        self.dateString = DateAndString.isLongFormat ?
            DateAndString.longString(year, month, day: day) :
            DateAndString.shortString(year, month, day: day)
    }
    
    static func twoDigits(_ number: Int) -> String {
        let i = number % 100
        return i < 10 ? "0\(i)" : "\(i)"
    }
    
    static func longString(_ year: Int, _ month: Int, day: Int) -> String {
        return "\(year)-" + twoDigits(month) + "-" + twoDigits(day)
    }
    
    static func shortString(_ year: Int, _ month: Int, day: Int) -> String {
        return twoDigits(year) + "-" + monthString[month - 1] + "-" + twoDigits(day)
    }
}

let dateA = DateAndString(2017, 1, 3)
print(dateA.dateString) // 17-JAN-03
DateAndString.isLongFormat = true
print(dateA.dateString) // 17-JAN-03
let dateB = DateAndString(2016, 2, 4)
print(dateB.dateString) // 2016-02-04