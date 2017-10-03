// 11.3 プロトコル拡張

// List11-9
protocol Dateable {
    var year: Int { get }
    var month: Int { get }
    var day: Int { get }
    var isLeap: Bool { get }
}

extension Dateable {
    var isLeap: Bool {
        return ((year % 4 == 0) && (year % 100 != 0 || year % 400 == 0))
    }
}

struct SimpleDate: Dateable {
    var year, month, day: Int
    var isLeap: Bool
}

let d1 = SimpleDate(year: 1984, month: 2, day: 28, isLeap: false)
print(d1)
print(d1.isLeap)