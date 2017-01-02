/// Struct Type Method

struct Leap {

    /// 閏年か調べる
    ///
    /// - Parameter year: 判定する年
    /// - Returns: true 閏年である / false 閏年でない
    static func isLeapYear(_ year: Int) -> Bool {
        return (year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0))
    }

    
    /// 年月を元に月の日数を返す
    ///
    /// - Parameters:
    ///   - year: 判定する年
    ///   - month: 判定する月
    /// - Returns: その月の日数
    static func countMonthDays(_ year: Int, _ month: Int) -> Int {

        switch month {
        case 2:
            return isLeapYear(year) ? 29 : 28
        case 1, 3, 5, 7, 8, 10, 12:
            return 31
        default:
            return 30
        }
    }
}

print(Leap.isLeapYear(2000)) // true
print(Leap.isLeapYear(2017)) // false
print(Leap.countMonthDays(2000, 2)) // 29
print(Leap.countMonthDays(2017, 2)) // 28
print(Leap.countMonthDays(2016, 1)) // 31
print(Leap.countMonthDays(2015, 4)) // 30
