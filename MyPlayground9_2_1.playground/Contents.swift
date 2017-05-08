struct DoNothing {
    var array: [Int]
    init(_ a: [Int]) { array = a }
    
    mutating func trouble(_ x: Int) -> Int {
        /* array[x] = 0　*/
        return array[x - 1]
    }
}

var la = [Int](0 ..< 0x20_0000)
var mom = 0
for x in 1...500 {
    var na = DoNothing(la)
    mom += na.trouble(x)
}

print(mom)
