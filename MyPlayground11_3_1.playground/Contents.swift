// 11.3 プロトコル拡張

// List11-7
protocol Dateable {
    var year: Int { get }
    var month: Int { get }
    var day: Int { get }
}

// List11-8
func Zeller(_ y: Int, _ m: Int, _ d: Int) -> Int {
    var y = y, m = m
    
    if m < 3 {
        m += 12
        y -= 1
    }
    
    let leap = y + y / 4 - y / 100 + y / 400
    return (leap + (12 * m + 8) / 5 + d) % 7
}

extension Dateable {
    var dayOfWeek: Int {
        return Zeller(year, month, day)
    }
}

struct SimpleDate: Dateable {
    var year, month, day: Int
}

let d1 = SimpleDate(year: 2011, month: 3, day: 11)
print(d1.dayOfWeek)