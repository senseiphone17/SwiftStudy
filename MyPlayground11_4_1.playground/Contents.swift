// 11.4 集合とプロトコル

var s: Set<String> = ["フランダース", "フランドル", "フランシスカ"]
print(s)

var t = Set<Int>(0..<8)
print(t)

for i in t {
    print(i, terminator:" ")
}
print("")

// List11-12
struct MonthAndDay: Hashable, CustomStringConvertible {
    var month, day: Int
    init(_ m: Int, _ d: Int) {
        month = m
        day = d
    }
    
    var hashValue: Int {
        return month * 32 + day
    }
    
    static func ==(lhs: MonthAndDay, rhs: MonthAndDay) -> Bool {
        return lhs.month == rhs.month && lhs.day == rhs.day
    }

    var description: String {
        return "(\(month), \(day))"
    }
}

var ds: Set<MonthAndDay> = [MonthAndDay(6, 18),
                            MonthAndDay(1, 3),
                            MonthAndDay(4, 16),
                            MonthAndDay(1, 3),
                            MonthAndDay(6, 18)]
print(ds)


var jset: Set<String> = ["雪女", "幽霊", "河童"]
print(jset)

let w = ["狼男", "吸血鬼", "幽霊"]
print(w)

let union = jset.union(w)
print(union)
jset.subtract(w)
print(jset)