/// Struct Initializer and Type Method

struct DateAndString {
    let dateString: String
    let year: Int
    let month: Int
    let day: Int
    
    init(_ year: Int, _ month: Int, day: Int) {
        self.year = year
        self.month = month
        self.day = day
        
        dateString = "\(year)-" + DateAndString.twoDigitsString(month) + "-" +
                                  DateAndString.twoDigitsString(day)
    }
    
    static func twoDigitsString(_ number: Int) -> String {
        
        guard number <= 100 else { return "99" }
        
        return number < 10 ? "0\(number)" : "\(number)"
    }
}

let dateString = DateAndString(2017, 1, day: 11)
print(dateString.dateString) // 2017-01-11