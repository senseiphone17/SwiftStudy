infix operator ~ : RangeFormationPrecedence

func ~ (n: Int, w: Int) -> String {
    var str = String(n)
    let pad = w - str.characters.count
    
    if pad > 0 {
        str = String(repeating: " ", count: pad) + str
    }

    return str
}

for wid in stride(from: 2, through: 6, by: 2) {
    for i in 1...5 {
        print (i + 7 ~ wid, terminator:"")
    }
    print("")
}

print("")

postfix operator %

postfix func % (n: Int) -> Double {
    return Double(n) * 0.01
}

postfix func % (r: Double) -> Double {
    return r * 0.01
}

var price: Double = 24_800
print(price * 80% * 108%) // 21427.2

print("")

infix operator >? : AssignmentPrecedence

func >? (lhs: inout Double, rhs: Double) {
    if lhs < rhs {
        lhs = rhs
    }
}

var a = 1.28

for x in [0.8, 1.34, -2.0, 0.75] {
    a >? x
}

print(a) // 1.34