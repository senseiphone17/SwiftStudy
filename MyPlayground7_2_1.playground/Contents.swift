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